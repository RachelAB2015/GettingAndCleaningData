__This file explains run_analysis.R__

## Data and Location of Files
Data is stored in the same directory as the analysis file (in subfolder).

Download data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
Unzip data to subfolder called "UCI HAR Dataset"

This script uses the following R packages: dplyr, which are called in the script. If they are not yet installed, use install.packages("dplyr")

## (1) Merge/concatenate the training and test datasets to create one data set.
### Step 1
Concatenate test and training datasets (raw data: "test/X_test" and "train/X_train.txt"). 
Add column labels (from features.txt)
Dataframe: dataraw

### Step 2
Concatenate subject files (subject_train.txt and subject_test.txt)
Add activity info to dataraw as first column, called activity.
Add subjects to dataraw2 as first column, called subject (makes activity second column)
Dataframe: human.activity.data

## (2) Extract only the measurements on the mean and standard deviation for each measurement.
Find variable names containing the mean and standard devioation values of the signal measurements, i.e., variable names contain mean() or std(). Keep only those variables plus subject and activity. 

Notes: I am not including any of the columns/variables that contained further caculations, in particular, I am not keeping meanFreq() variables as those are weighted averages and thus go beyond simply calculating means and standard deviations. I am also dropping variables with BodyBody in the name as they are likely a mistake given that there is no reference to them in features_info.txt

(This is per discussions here: https://class.coursera.org/getdata-030/forum/thread?thread_id=86#comment-244 and https://class.coursera.org/getdata-030/forum/thread?thread_id=225 )

Dataframe: human.activity.subset

## (3) Use descriptive activity names to name the activities in the data set
Read activity labels, clean them up to match standard variable naming conventions, and use this to replace the activity numbers in human.activity.subset dataframe. 
Dataframe: human.activity.subset

## (4) Appropriately label the data set with descriptive variable names
See references for info on naming conventions.

To avoid creating huge variable names, I will retain the bulk of the original variable names since they can easily be looked up in the code book. 
Replacements made: 
  t to time  
  f to freq 
  XYZ refer to the 3-axial signals in the X, Y and Z directions

## (5) Create a second tidy data set with the average of each variable for each activity and each subject.                                          
Using the aggregation approach mentioned in Hadley Wickham's paper, p. 14: aggregate() since my input is a tidy dataframe. Ensuring that the output is tidy as well (code for checking is commented out).

Output data frame as a text file using write.table() dropping rownames. 
Code for checking output dataset (commented out in run_analysis.R):
  data <- read.table("./CourseraGetDataProject.txt", header = TRUE) 
  View(data)

This text file is also at Git Hub. 

**** 
## References
Hadley Wickham on Tidy Data: http://vita.had.co.nz/papers/tidy-data.pdf  
Variable naming conventions: https://class.coursera.org/getdata-030/forum/thread?thread_id=184  
Source of code for read.table: https://class.coursera.org/getdata-030/forum/thread?thread_id=37  


