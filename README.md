# GettingCleaningDataProject
Project for Johns Hopkins Coursera Getting and Cleaning Data course.

##Introduction

This script (run_analysis.R) is designed to read in a series of datasets from the UCI HAR Laboratory, in which 30 observers recorded movement in 6 different levels of activity (walking, sitting still, etc.) using the accelerometers from Samsung Galaxy S smartphones.  The script merges together the testing and training datasets for the input features (X), the output labels (y), and the ID of the volunteers.  It then extracts only information related to the mean and standard deviation of each measurement of movement.  This data is then summarized by taking the **mean** of each of these variables for each pair of **Activity** ("ActivityLevel") and **Volunteer** ("SubjectID").  The data is then stored as a tidy dataset, in a single data frame where:
* Each row is an observation of a unique Activity/Volunteer pair.
* Each column is a separate variable which has been summarized (as a mean).

The data will then be written to a text file, CourseProjectOutput.txt, located in the current working directory.

Note that the dplyr package is required for using this script.  It is assumed that the data has already been unzipped into a local working directory and is located in "UCI HAR Dataset/".

##How the script works

###Read in Data (Lines 14-26)

The individual datasets are read in for the subject, X, and y tables, for both the testing and training set.  All files in the "Inertial Signals" folders have been ignored, as they are unlabeled and otherwise redundant with measurements in the X datasets.

Additional files are read in containing the ordered list of features (flist), and the descriptive IDs for each of the Activity Levels (with alevels containing the numeric levels and alabels the corresponding labels).

###Generate Descriptive Variable Names (Lines 38-51)

All typographical symbols inconsistent with standard R variable naming ("(", "," , etc.) are removed or converted.  This script is not interested in the time-averaged t...Mean variables or the mean frequency t...meanFreq() variables, so these variables are renamed to values which will not be confused with the mean() variables later.  The "f" prefix is changed into a "FFT_" for clarity.  A repetition of the word Body is also corrected.  These variables are all stored in vector flist.

###Bind Separate Datasets Together (Lines 60-85)

The X variables are given the column names contained in flist.  The testing and training set are then rowbinded together into a single frame.

The y test and train data are assigned a variable name (ActivityLevel) and rowbinded together.  The numeric activity levels are reassigned to string factors describing each activity.

The subject test and train data are assigned a variable name (SubjectID) and rowbinded together.

Finally, these new X, y, and subject datasets are columnbinded together into a single data frame (dfTot).

###Extract All mean() and std() Measurements (Lines 90-103)

A reduced data frame (reddf) is constructed containing only columns for the ActivityLevel, the SubjectID, and any variables containing the strings "mean" and "std", corresponding to the mean and standard deviation measurements for each movement mode.

###Create a Tidy, Summarized Dataset and Print to File (Lines 105-115)

The reduced data frame reddf is, via dplyr, converted into a tidy, summarized dataset, where the average of each measurement value is taken for each pair of activity (ActivityLevel) and volunteer(SubjectID).  This dataframe (meandf) is then written to a file CourseProjectOutput.txt in the current working directory.