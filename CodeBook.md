# Code Book for the Getting And Cleaning Data Course (Coursera)


## Dataset origin and modifications

The data used to build this dataset was obtained from the following link:  from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The present dataset has been built by merging the training and test datasets available in the previous file. The values of the variables describing mean or standard deviation values of the original features in the original datasets have been averaged for each subject under study (as specified by the Subject column) and for each activity it carries out (as specifiec by the Activity column). The procedure used to perform this transformation and tidy of the data can be found in file run_analysis.R, in the form of detailed comments throughout the code.


## Feature description

Find below the description of the features captured within this dataset. Note that many feature descriptions, specified as "METRIC"X/Y/Z, actually represent 3 independent features captured for the X, Y and Z axis. The mean values of the described signals have been calculated for each subject (specified by the Subject column) and for each activity (specified by the Activity column) it performs.


* MeantBodyAcc.mean...X/Y/Z 
	Mean value of the mean of the body acceleration signals (X, Y and Z axes). Captured with the accelerometer. Units: g.

* MeantBodyAcc.std...X/Y/Z
	Mean value of the standard deviation of the body acceleration signal (X, Y and Z axes). Captured with the accelerometer. Units: g.

* MeantGravityAcc.mean...X/Y/Z
	Mean value of the mean of the gravity acceleration signals (X, Y and Z axes). Captured with the accelerometer. Units: g.

* MeantGravityAcc.std...X/Y/Z 
	Mean value of the standard deviation of the body acceleration signal (X, Y and Z axes). Captured with the accelerometer. Units: g.

* MeantBodyAccJerk.mean...X/Y/Z 
	Mean value of the mean of the body acceleration Jerk signal (X, Y and Z axes). Calculated by deriving the acceleration.

* MeantBodyAccJerk.std...X/Y/Z 
	Mean value of the standard deviation of the body acceleration Jerk signal (X, Y and Z axes). Calculated by deriving the acceleration.

* MeantBodyGyro.mean...X/Y/Z 
	Mean value of the mean of the body angular velocity signals (X, Y and Z axes). Captured with the gyroscope. Units: rad/s.

* MeantBodyGyro.std...X/Y/Z 
	Mean value of the standard deviation of the body angular velocity signals (X, Y and Z axes). Captured with the gyroscope. Units: rad/s.

* MeantBodyGyroJerk.mean...X 
	Mean value of the mean of the body angular velocity Jerk signal (X, Y and Z axes). Calculated by deriving the angular velocity.

* MeantBodyGyroJerk.std...X 
	Mean value of the standard deviation of the body angular velocity Jerk signal (X, Y and Z axes). Calculated by deriving the angular velocity.

* MeantBodyAccMag.mean.. 
	Mean value of the mean Euclidean norm of the signals MeantBodyAcc.mean...X/Y/Z 	

* MeantBodyAccMag.std.. 
	Mean value of the standard deviation on the calculation of the Euclidean norm of the signals MeantBodyAcc.std...X/Y/Z Units: g.

* MeantGravityAccMag.mean.. 
	Mean value of the mean Euclidean norm of the signals MeantGravityAcc.mean...X/Y/Z

* MeantGravityAccMag.std.. 
	Mean value of the standard deviation on the calculation of the Euclidean norm of the signals MeantGravityAcc.std...X/Y/Z  Units: g.

* MeantBodyAccJerkMag.mean.. 
	Mean value of the mean Euclidean norm of the signals MeantBodyAccJerk.mean...X/Y/Z 

* MeantBodyAccJerkMag.std.. 
	Mean value of the standard deviation on the calculation of the Euclidean norm of the signals MeantBodyAccJerk.std...X/Y/Z  Units: g.

* MeantBodyGyroMag.mean.. 
	Mean value of the mean Euclidean norm of the signals MeantBodyGyro.mean...X/Y/Z 

* MeantBodyGyroMag.std.. 
	Mean value of the standard deviation on the calculation of the Euclidean norm of the signals MeantBodyGyro.std...X/Y/Z  Units: rad/s.

* MeantBodyGyroJerkMag.mean.. 
	Mean value of the mean Euclidean norm of the signals MeantBodyGyroJerk.mean...X 

* MeantBodyGyroJerkMag.std.. 
	Mean value of the standard deviation on the calculation of the Euclidean norm of the signals MeantBodyGyroJerk.std...X  Units: rad/s.

* MeanfBodyAcc.mean...X/Y/Z 
	Mean value of the mean Fast Fourier Transform of the signals MeantBodyAcc.mean...X/Y/Z Units: Hz

* MeanfBodyAcc.std...X/Y/Z 
	Mean value of the standard deviation of the  Fast Fourier Transform of the signals MeantBodyAcc.std...X/Y/Z Units: Hz

* MeanfBodyAcc.meanFreq...X/Y/Z 
	Mean value of the mean frequency for MeanfBodyAcc Units: Hz

* MeanfBodyAccJerk.mean...X/Y/Z 
	Mean value of the mean Fast Fourier Transform of the signals MeantBodyAccJerk.mean...X/Y/Z  Units: Hz

* MeanfBodyAccJerk.std...X/Y/Z 
	Mean value of the standard deviation of the  Fast Fourier Transform of the signals MeanfBodyAccJerk.std...X/Y/Z  Units: Hz

* MeanfBodyAccJerk.meanFreq...X/Y/Z 
	Mean value of the mean frequency for MeanfBodyAccJerk Units: Hz

* MeanfBodyGyro.mean...X/Y/Z 
	Mean value of the mean Fast Fourier Transform of the signals MeantBodyGyro.mean...X/Y/Z  Units: Hz

* MeanfBodyGyro.std...X/Y/Z 
	Mean value of the standard deviation of the  Fast Fourier Transform of the signals MeantBodyGyro.std...X/Y/Z  Units: Hz

* MeanfBodyGyro.meanFreq...X/Y/Z 
	Mean value of the mean frequency for MeanfBodyGyro Units: Hz

* MeanfBodyAccMag.mean.. 
	Mean value of the mean Fast Fourier Transform of the signals MeantBodyAccMag.mean.. Units: Hz

* MeanfBodyAccMag.std.. 
	Mean value of the standard deviation of the  Fast Fourier Transform of the signals MeantBodyAccMag.std..  Units: Hz

* MeanfBodyAccMag.meanFreq.. 
	Mean value of the mean frequency for MeanfBodyAccMag Units: Hz

* MeanfBodyBodyAccJerkMag.mean.. 
	Mean value of the mean Euclidean norm of the signals MeantBodyAcc.mean...X/Y/Z 	 Units: Hz

* MeanfBodyBodyAccJerkMag.std.. 
	Mean value of the standard devuation Euclidean norm of the signals MeanfBodyBodyAccJerk.std..X/Y/Z Units: Hz

* MeanfBodyBodyAccJerkMag.meanFreq.. 
	Mean value of the mean Euclidean norm of the signals MeanfBodyBodyAccJerkMag.meanFreq..X/Y/Z  Units: Hz	

* MeanfBodyBodyGyroMag.mean.. 
	Mean value of the mean Euclidean norm of the signals MeanfBodyBodyGyro.mean..X/Y/Z  Units: Hz

* MeanfBodyBodyGyroMag.std.. 
	Mean value of the standard devuation Euclidean norm of the signals MeanfBodyBodyGyro.std..X/Y/Z  Units: Hz
	
* MeanfBodyBodyGyroMag.meanFreq.. 
	Mean value of the mean frequency for MeanfBodyBodyGyroMag Units: Hz

* MeanfBodyBodyGyroJerkMag.mean.. 
	Mean value of the mean Euclidean norm of the signals MeanfBodyBodyGyroJerk.mean.. X/Y/Z  Units: Hz
	
* MeanfBodyBodyGyroJerkMag.std.. 
	Mean value of the standard devuation Euclidean norm of the signals MeanfBodyBodyGyroJerk.std..X/Y/Z  Units: Hz	

* MeanfBodyBodyGyroJerkMag.meanFreq.. 
	Mean value of the mean frequency for MeanfBodyBodyGyroJerkMag Units: Hz

* Subject 
	Subject carrying out the activity. Range: [1, 30]

* Activity 
	Activity labels indicating the nature of the activity: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
