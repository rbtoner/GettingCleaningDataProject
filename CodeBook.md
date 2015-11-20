# Code Book

##Data:

Data are measurements taken from 30 volunteers (SubjectID), performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  Each volunteer wore a smartphone, and trilineal measurements of acceleration, jerk, etc. were taken with an embedded accelerometer and gyroscope.  This dataset is taken from the larger UCI HAR dataset and contains the mean and standard deviation of each of these measurements for each volunteer for each specific type of activity.

##Variables:

###Name : (Type) Description

SubjectID : (Int) ID number of Volunteer performing the measurements (range = 1-30).

ActivityLevel : (Factor) Type of activity being performed by volunteer (6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

BodyAcc- : Means of measurements of body acceleration for each subject/activity:
* BodyAcc_mean_X : (Num) X axis, mean
* BodyAcc_mean_Y : (Num) Y axis, mean
* BodyAcc_mean_Z : (Num) Z axis, mean	
* BodyAccMag_mean : (Num) Euclidian norm, mean
* BodyAcc_std_X : (Num) X axis, standard deviation
* BodyAcc_std_Y : (Num) Y axis, standard deviation
* BodyAcc_std_Z : (Num) Z axis, standard deviation
* BodyAccMag_std : (Num) Euclidian norm, standard deviation

BodyAccJerk- : Means of measurements of body Jerk signals (from body lineary acceleration) for each subject/activity:
* BodyAccJerk_mean_X : (Num) X axis, mean
* BodyAccJerk_mean_Y : (Num) Y axis, mean
* BodyAccJerk_mean_Z : (Num) Z axis, mean	
* BodyAccJerkMag_mean : (Num) Euclidian norm, mean
* BodyAccJerk_std_X : (Num) X axis, standard deviation
* BodyAccJerk_std_Y : (Num) Y axis, standard deviation
* BodyAccJerk_std_Z : (Num) Z axis, standard deviation
* BodyAccJerkMag_std : (Num) Euclidian norm, standard deviation

GravityAcc- : Means of measurements of gravity acceleration for each subject/activity:
* GravityAcc_mean_X : (Num) X axis, mean
* GravityAcc_mean_Y : (Num) Y axis, mean
* GravityAcc_mean_Z : (Num) Z axis, mean	
* GravityAccMag_mean : (Num) Euclidian norm, mean
* GravityAcc_std_X : (Num) X axis, standard deviation
* GravityAcc_std_Y : (Num) Y axis, standard deviation
* GravityAcc_std_Z : (Num) Z axis, standard deviation
* GravityAccMag_std : (Num) Euclidian norm, standard deviation

BodyGyro- : Means of measurements of gyroscopic movement for each subject/activity:
* BodyGyro_mean_X : (Num) X axis, mean
* BodyGyro_mean_Y : (Num) Y axis, mean
* BodyGyro_mean_Z : (Num) Z axis, mean	
* BodyGyroMag_mean : (Num) Euclidian norm, mean
* BodyGyro_std_X : (Num) X axis, standard deviation
* BodyGyro_std_Y : (Num) Y axis, standard deviation
* BodyGyro_std_Z : (Num) Z axis, standard deviation
* BodyGyroMag_std : (Num) Euclidian norm, standard deviation

BodyGyroJerk- : Means of measurements of gyro. Jerk signals (from angular velocity) for each subject/activity:
* BodyGyroJerk_mean_X : (Num) X axis, mean
* BodyGyroJerk_mean_Y : (Num) Y axis, mean
* BodyGyroJerk_mean_Z : (Num) Z axis, mean	
* BodyGyroJerkMag_mean : (Num) Euclidian norm, mean
* BodyGyroJerk_std_X : (Num) X axis, standard deviation
* BodyGyroJerk_std_Y : (Num) Y axis, standard deviation
* BodyGyroJerk_std_Z : (Num) Z axis, standard deviation
* BodyGyroJerkMag_std : (Num) Euclidian norm, standard deviation

FFT_BodyAcc- : Means of Fast Fourier Transform of body acceleration for each subject/activity:
* FFT_BodyAcc_mean_X : (Num) X axis, mean
* FFT_BodyAcc_mean_Y : (Num) Y axis, mean
* FFT_BodyAcc_mean_Z : (Num) Z axis, mean	
* FFT_BodyAccMag_mean : (Num) Euclidian norm, mean
* FFT_BodyAcc_std_X : (Num) X axis, standard deviation
* FFT_BodyAcc_std_Y : (Num) Y axis, standard deviation
* FFT_BodyAcc_std_Z : (Num) Z axis, standard deviation
* FFT_BodyAccMag_std : (Num) Euclidian norm, standard deviation

FFT_BodyAccJerk- : Means of Fast Fourier Transform of body Jerk for each subject/activity:
* FFT_BodyAccJerk_mean_X : (Num) X axis, mean
* FFT_BodyAccJerk_mean_Y : (Num) Y axis, mean
* FFT_BodyAccJerk_mean_Z : (Num) Z axis, mean	
* FFT_BodyAccJerkMag_mean : (Num) Euclidian norm, mean
* FFT_BodyAccJerk_std_X : (Num) X axis, standard deviation
* FFT_BodyAccJerk_std_Y : (Num) Y axis, standard deviation
* FFT_BodyAccJerk_std_Z : (Num) Z axis, standard deviation
* FFT_BodyAccJerkMag_std : (Num) Euclidian norm, standard deviation

FFT_BodyGyro- : Means of Fast Fourier Transform of gyroscopic movement for each subject/activity:
* BodyGyro_mean_X : (Num) X axis, mean
* BodyGyro_mean_Y : (Num) Y axis, mean
* BodyGyro_mean_Z : (Num) Z axis, mean	
* BodyGyroMag_mean : (Num) Euclidian norm, mean
* BodyGyro_std_X : (Num) X axis, standard deviation
* BodyGyro_std_Y : (Num) Y axis, standard deviation
* BodyGyro_std_Z : (Num) Z axis, standard deviation
* BodyGyroMag_std : (Num) Euclidian norm, standard deviation

FFT_BodyGyro- : Means of Fast Fourier Transform of gyroscopic Jerk for each subject/activity:
* BodyGyroJerkMag_mean : (Num) Euclidian norm, mean
* BodyGyroJerkMag_std : (Num) Euclidian norm, standard deviation
