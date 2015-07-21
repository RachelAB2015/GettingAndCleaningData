### Get data ###
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip?accessType=DOWNLOAD"
download.file(fileUrl, destfile = "./datafile.zip", method = "curl")
unzip("datafile.zip")

### (1) Merge/concatenate the training and the test sets to create one data set. ###
## Reading in the Data ## 
# raw data
testraw <- read.table("./UCI HAR Dataset/test/X_test.txt")
trainraw <- read.table("./UCI HAR Dataset/train/X_train.txt")

# labels
testlabels <- read.table("./UCI HAR Dataset/test/Y_test.txt")
trainlabels <- read.table("./UCI HAR Dataset/train/Y_train.txt")

# subject identifier
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# column names
features <- read.table("./UCI HAR Dataset/features.txt")

## Working toward one dataset ## 
dataraw <- rbind(testraw,trainraw)
# add column names
colnames(dataraw) <- features$V2
# adding activity number to dataset
labels <- rbind(testlabels, trainlabels)
dataraw2 <- cbind(labels,dataraw)
colnames(dataraw2)[1] <- "activity"

# add subject info
subjects <- rbind(subjecttest,subjecttrain)
human.activity.data <- cbind(subjects,dataraw2)
colnames(human.activity.data)[1] <- "subject"
head(human.activity.data[,1:5])
# keep only final dataframe in global environment
rm(list=setdiff(ls(), "human.activity.data"))
# saving dataset as R data just in case
save(human.activity.data,file="step1.rda")
# code to reload data
# load("step1.rda")


### (2) Extract only the measurements on the mean and standard deviation for each measurement. ###
# Find variable names containing mean() and std() and fixed=TRUE excludes meanFreq
meanvars <- grep("mean()",names(human.activity.data), fixed=TRUE)
stdvars <- grep("std()",names(human.activity.data), fixed=TRUE)
bothvars <- sort(c(meanvars,stdvars))
# drop variables with BodyBody as that's likely a mistake (see README)
bodybody <- grep("BodyBody",names(human.activity.data), fixed=TRUE)
keepvars <- bothvars[which(bothvars < min(bodybody))]

# keep only those variables plus subject and activity
human.activity.subset <- human.activity.data[,c(1,2,keepvars)]

# saving dataset as R data just in case
# save(human.activity.subset,file="step2.rda")
# code to reload data
# load("step2.rda")

### (3) Use descriptive activity names to name the activities in the data set ###
# read in activity labels
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")
# editing activity info, replacing numbers with descriptions
activity$V2 <- tolower(activity$V2)
activity$V2 <- sub("_",".",activity$V2)

# replacing the activity numbers with the labels
human.activity.subset2 = merge(human.activity.subset,activity,by.x="activity",by.y="V1",
                               all.x=TRUE, sort=FALSE)
# dropping extra variable
human.activity.subset2 <- human.activity.subset2[-1]
# renaming new chr variable
library(dplyr)
human.activity.subset2 <- rename(human.activity.subset2, activity = V2)
# moving it to the front
human.activity.data <- human.activity.subset2[c(1,62,2:61)]
rm(list=setdiff(ls(), "human.activity.data"))

# saving dataset as R data just in case
# save(human.activity.data,file="step3.rda")
# code to reload data
# load("step3.rda")


### (4) Appropriately label the data set with descriptive variable names. ###
# replace t with time
names(human.activity.data) <- sub("^t", "time", names(human.activity.data))
# replace f with freq
names(human.activity.data) <- sub("^f", "freq", names(human.activity.data))
# replace dashes with periods
names(human.activity.data) <- gsub("-", ".", names(human.activity.data))
# remove those parenthesis! 
names(human.activity.data) <- sub("()", "", names(human.activity.data), fixed = TRUE)

# save(human.activity.data,file="step4.rda")
# load("step4.rda")

### (5) Create a second, independent tidy data set with the average of each variable ###
###     for each activity and each subject.                                          ###
# aggregate data
human.activity.means <- aggregate(x = human.activity.data[3:62], 
                                  by = list(subject=human.activity.data$subject, 
                                            activity=human.activity.data$activity), 
                                  FUN = mean)
# checking out the dataframe
# head(human.activity.means[1:5],n = 40L)
# table(human.activity.means$activity) # should be 30 each - and is. 

# creating output text file
write.table(x = human.activity.means, 
            file = "./CourseraGetDataProject.txt",
            row.names=FALSE) 

# code to double check file
# data <- read.table("./CourseraGetDataProject.txt", header = TRUE) 
# View(data)

