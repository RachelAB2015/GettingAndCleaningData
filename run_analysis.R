### (1) Merge/concatenate the training and the test sets to create one data set. ###
## Reading in the Data ## 
# raw data
testraw <- read.table("./UCI HAR Dataset/test/X_test.txt")
trainraw <- read.table("./UCI HAR Dataset/train/X_train.txt")

# labels
testlabels <- read.table("./UCI HAR Dataset/test/Y_test.txt")
trainlabels <- read.table("./UCI HAR Dataset/train/Y_train.txt")
activity <- read.table("./UCI HAR Dataset/activity_labels.txt")

# subject identifier
subjecttest <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjecttrain <- read.table("./UCI HAR Dataset/train/subject_train.txt")

# column names
features <- read.table("./UCI HAR Dataset/features.txt")

## Working toward one dataset ## 
dataraw <- rbind(testraw,trainraw)
# add column names
colnames(dataraw) <- features$V2
# editing activity info, replacing numbers with descriptions, and adding it to dataset
labels <- rbind(testlabels, trainlabels)
activity$V2 <- tolower(activity$V2)
activity$V2 <- sub("_",".",activity$V2)
mergedLabels <- merge(labels,activity,all.x=TRUE, sort=FALSE)
dataraw2 <- cbind(mergedLabels,dataraw)
dataraw2$V1 <- NULL
colnames(dataraw2)[1] <- "activity"

# add subject info
subjects <- rbind(subjecttest,subjecttrain)
human.activity.data <- cbind(subjects,dataraw2)
colnames(human.activity.data)[1] <- "subject"
head(human.activity.data[,1:5])

### (2) Extract only the measurements on the mean and standard deviation for each measurement. ###


