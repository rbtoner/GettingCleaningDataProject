##run_analysis(): Function to merge testing and training sets in
## "UCI HAR Dataset/" directories, for X, y, and subject datasets.
## Function then extracts variable columns related to mean and
## standard variation, and finds the means of the variable measurements
## within each (Activity, subjectID) pair.  This is printed to a tidy
## dataset in the current working directory, with name "CourseProjectOutput.txt."

run_analysis <- function(){

    require(dplyr)
    
    ##--Read in all files to frames and set names------------:##

    ##Read in test frames:
    ##X = features, y = labels, s = subject ID
    xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
    ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
    stest <- read.table("UCI HAR Dataset/test/subject_test.txt")

    ##Read in train frames:
    ##X = features, y = labels, s = subject ID
    xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
    ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
    strain <- read.table("UCI HAR Dataset/train/subject_train.txt")

    ##Read in activity labels:
    #Read in the file:
    aframe <- read.table("UCI HAR Dataset/activity_labels.txt")
    #Make a list of factors (and levels):
    alevels <- aframe$V1 #levels (numbering)
    alabels <- aframe$V2 #labels (naming)
 
    ##Read in features:
    fframe <- read.table("UCI HAR Dataset/features.txt")
    ##Extract the feature vector:
    flist <- fframe$V2

    #Make the variable names less confusing to type as R variables:
    #(Task 4: Generate descriptive variable names)
    flist <- gsub("\\(","",flist)
    flist <- gsub("\\)","",flist)
    flist <- gsub("-","_",flist)
    flist <- gsub(",","_",flist)
    #Change this for removing latter grep ambiguity (we only want "mean()"):
    flist <- gsub("meanFreq","MF",flist)
    flist <- gsub("Mean","M",flist)
    #Some more variable naming changes:
    flist <- gsub("tBody","Body",flist)
    flist <- gsub("tGrav","Grav",flist)
    flist <- gsub("fBody","FFT_Body",flist)
    flist <- gsub("BodyBody","Body",flist)

    ##--------------------------------------------------------##
    
    ##--TASK 1: Bind all parts of Test and Train together----:##
    
    ##Modify the X frames:
    #Give them the right var names:
    names(xtest) <- flist
    names(xtrain) <- flist
    #Row bind the frames together:
    xdf <- rbind(xtrain,xtest)

    ##Modify the Y frames:
    #Names of the (single) row:
    alist <- c("ActivityLevel")
    names(ytest) <- alist
    names(ytrain) <- alist
    #Bind the sets together:
    ydf <- rbind(ytrain,ytest)

    ##TASK 3: Descriptive activity names for activities in the data set:
    #Convert the numeric factors into names:
    ydf$ActivityLevel <- factor(as.factor(ydf$ActivityLevel),levels=alevels,labels=alabels)

    ##Modify the subject frames:
    #Names of the (single) row:
    slist <- c("SubjectID")
    names(stest) <- slist
    names(strain) <- slist
    #Bind the sets together:
    sdf <- rbind(strain,stest)
    
    ##Bind all parts of Test and Train together:
    dfTot <- cbind(xdf,sdf,ydf)

    ##--------------------------------------------------------##


    ##--TASK 2: Extract only mean() and std() variables------:##
    ##List of columns to extract:
    #Mean of measurements:
    cmean <- flist[grep("mean",flist)]
    #StdDev of measurements:
    cstd <- flist[grep("std",flist)]

    ##All the columns we want to extract:
    totcol <- c(cstd,cmean,"SubjectID","ActivityLevel")

    ##Make a new frame with only these columns:
    reddf <- dfTot[,totcol]

    ##--------------------------------------------------------##

    ##--TASK 5: Tidy dataset, vars' means per Activity Level:-##

    #Use dplyr functions to group by Activity and function,
    ##and then summarize by mean:
    meandf <- reddf %>%
        group_by(SubjectID,ActivityLevel) %>%
            summarize_each(funs(mean(., na.rm = TRUE)),BodyAcc_std_X:FFT_BodyGyroJerkMag_mean)

    #Write the data to file:
    write.table(meandf,"./CourseProjectOutput.txt",row.names=FALSE)
    ##--------------------------------------------------------##
    
}
