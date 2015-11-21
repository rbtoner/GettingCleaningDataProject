# Code Book

##Data:

Data are measurements taken from 30 volunteers (SubjectID), performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).  Each volunteer wore a smartphone, and trilineal measurements of acceleration, jerk, etc. were taken with an embedded accelerometer and gyroscope.  This dataset is taken from the larger UCI HAR dataset and contains the mean and standard deviation of each of these measurements for each volunteer for each specific type of activity.

##Variables:

###Name : (Type, unit) Description

**SubjectID** : (Int) ID number of Volunteer performing the measurements (range = 1-30).

**ActivityLevel** : (Factor) Type of activity being performed by volunteer (6 levels: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING).

**BodyAcc-** : *Overall Means* of the following measurements of body acceleration for each subject/activity:
* **BodyAcc_mean_X** : (Num, g) X axis, mean
* **BodyAcc_mean_Y** : (Num, g) Y axis, mean
* **BodyAcc_mean_Z** : (Num, g) Z axis, mean	
* **BodyAccMag_mean** : (Num, g) Euclidian norm, mean
* **BodyAcc_std_X** : (Num, g) X axis, standard deviation
* **BodyAcc_std_Y** : (Num, g) Y axis, standard deviation
* **BodyAcc_std_Z** : (Num, g) Z axis, standard deviation
* **BodyAccMag_std** : (Num, g) Euclidian norm, standard deviation

**BodyAccJerk-** : *Overall Means* of the following measurements of body Jerk signals (from body lineary acceleration) for each subject/activity:
* **BodyAccJerk_mean_X** : (Num, g) X axis, mean
* **BodyAccJerk_mean_Y** : (Num, g) Y axis, mean
* **BodyAccJerk_mean_Z** : (Num, g) Z axis, mean	
* **BodyAccJerkMag_mean** : (Num, g) Euclidian norm, mean
* **BodyAccJerk_std_X** : (Num, g) X axis, standard deviation
* **BodyAccJerk_std_Y** : (Num, g) Y axis, standard deviation
* **BodyAccJerk_std_Z** : (Num, g) Z axis, standard deviation
* **BodyAccJerkMag_std** : (Num, g) Euclidian norm, standard deviation

**GravityAcc-** : *Overall Means* of the following measurements of gravity acceleration for each subject/activity:
* **GravityAcc_mean_X** : (Num, g) X axis, mean
* **GravityAcc_mean_Y** : (Num, g) Y axis, mean
* **GravityAcc_mean_Z** : (Num, g) Z axis, mean	
* **GravityAccMag_mean** : (Num, g) Euclidian norm, mean
* **GravityAcc_std_X** : (Num, g) X axis, standard deviation
* **GravityAcc_std_Y** : (Num, g) Y axis, standard deviation
* **GravityAcc_std_Z** : (Num, g) Z axis, standard deviation
* **GravityAccMag_std** : (Num, g) Euclidian norm, standard deviation

**BodyGyro-** : *Overall Means* of the following measurements of gyroscopic movement for each subject/activity:
* **BodyGyro_mean_X** : (Num, g) X axis, mean
* **BodyGyro_mean_Y** : (Num, g) Y axis, mean
* **BodyGyro_mean_Z** : (Num, g) Z axis, mean	
* **BodyGyroMag_mean** : (Num, g) Euclidian norm, mean
* **BodyGyro_std_X** : (Num, g) X axis, standard deviation
* **BodyGyro_std_Y** : (Num, g) Y axis, standard deviation
* **BodyGyro_std_Z** : (Num, g) Z axis, standard deviation
* **BodyGyroMag_std** : (Num, g) Euclidian norm, standard deviation

**BodyGyroJerk-** : *Overall Means* of the following measurements of gyro. Jerk signals (from angular velocity) for each subject/activity:
* **BodyGyroJerk_mean_X** : (Num, g) X axis, mean
* **BodyGyroJerk_mean_Y** : (Num, g) Y axis, mean
* **BodyGyroJerk_mean_Z** : (Num, g) Z axis, mean	
* **BodyGyroJerkMag_mean** : (Num, g) Euclidian norm, mean
* **BodyGyroJerk_std_X** : (Num, g) X axis, standard deviation
* **BodyGyroJerk_std_Y** : (Num, g) Y axis, standard deviation
* **BodyGyroJerk_std_Z** : (Num, g) Z axis, standard deviation
* **BodyGyroJerkMag_std** : (Num, g) Euclidian norm, standard deviation

**FFT_BodyAcc-** : *Overall Means* of the following Fast Fourier Transform measurements of body acceleration for each subject/activity:
* **FFT_BodyAcc_mean_X** : (Num, g) X axis, mean
* **FFT_BodyAcc_mean_Y** : (Num, g) Y axis, mean
* **FFT_BodyAcc_mean_Z** : (Num, g) Z axis, mean	
* **FFT_BodyAccMag_mean** : (Num, g) Euclidian norm, mean
* **FFT_BodyAcc_std_X** : (Num, g) X axis, standard deviation
* **FFT_BodyAcc_std_Y** : (Num, g) Y axis, standard deviation
* **FFT_BodyAcc_std_Z** : (Num, g) Z axis, standard deviation
* **FFT_BodyAccMag_std** : (Num, g) Euclidian norm, standard deviation

**FFT_BodyAccJerk-** : *Overall Means* of the following Fast Fourier Transform measurements of body Jerk for each subject/activity:
* **FFT_BodyAccJerk_mean_X** : (Num, g) X axis, mean
* **FFT_BodyAccJerk_mean_Y** : (Num, g) Y axis, mean
* **FFT_BodyAccJerk_mean_Z** : (Num, g) Z axis, mean	
* **FFT_BodyAccJerkMag_mean** : (Num, g) Euclidian norm, mean
* **FFT_BodyAccJerk_std_X** : (Num, g) X axis, standard deviation
* **FFT_BodyAccJerk_std_Y** : (Num, g) Y axis, standard deviation
* **FFT_BodyAccJerk_std_Z** : (Num, g) Z axis, standard deviation
* **FFT_BodyAccJerkMag_std** : (Num, g) Euclidian norm, standard deviation

**FFT_BodyGyro-** : *Overall Means* of the following Fast Fourier Transform measurements of gyroscopic movement for each subject/activity:
* **BodyGyro_mean_X** : (Num, g) X axis, mean
* **BodyGyro_mean_Y** : (Num, g) Y axis, mean
* **BodyGyro_mean_Z** : (Num, g) Z axis, mean	
* **BodyGyroMag_mean** : (Num, g) Euclidian norm, mean
* **BodyGyro_std_X** : (Num, g) X axis, standard deviation
* **BodyGyro_std_Y** : (Num, g) Y axis, standard deviation
* **BodyGyro_std_Z** : (Num, g) Z axis, standard deviation
* **BodyGyroMag_std** : (Num, g) Euclidian norm, standard deviation

**FFT_BodyGyro-** : *Overall Means* of the following Fast Fourier Transform measurements of gyroscopic Jerk for each subject/activity:
* **BodyGyroJerkMag_mean** : (Num, g) Euclidian norm, mean
* **BodyGyroJerkMag_std** : (Num, g) Euclidian norm, standard deviation
