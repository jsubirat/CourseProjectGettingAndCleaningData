# Course Project for the Getting And Cleaning Data Course (Coursera)


## Description

This software obtains a compresed dataset split in different files from the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

Then, it performs several operations in order to combine the different files that this compressed file contains that conform the dataset, in order to build a final, tidy dataset. Namely, as described in the Course Project description, it does:

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

All this functionality has been implemented in the R file named "run_analysis.R".


## Implementation

The implementation of this software has been done using the R programming language. Details about the steps taken to process the dataset as described before can be found in the form of detailed comments throughout the code in the file run_analysis.R.


## Usage

The programmed script does all the required steps to obtain the tidy dataset, including the downloading of the data to the current working directory. Simply execute the script by executing the following in the R console:

source('run_analysis.R')
tidy_dataset <- run_analysis()

Now tidy_dataset contains the tidy dataset as required in the instructions of the Course Project.
