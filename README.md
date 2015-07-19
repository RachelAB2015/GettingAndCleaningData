## This file explains how all of the scripts work and how they are connected.  

## Data and Location of Files
Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Unzip data to subfolder called "UCI HAR Dataset"
Data is stored in the same directory as the analysis file (in subfolder).

# (1) Merge/concatenate the training and the test sets to create one data set.
## Step 1
Concatenate test and training datasets (raw data: "test/X_test" and "train/X_train.txt"). 
Add column labels (from features.txt)
Data.frame: dataraw

## Step 2
Concatenate subject files (subject_train.txt and subject_test.txt)
Add activity info to dataraw as first column, called activity using activity labels.
Add subjects to dataraw2 as first column, called subject (makes activity second column)
Data.frame: human.activity.data

# (2) Extract only the measurements on the mean and standard deviation for each measurement.

# GettingAndCleaningData
