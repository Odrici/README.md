## load libraries
library(data.table)
library(dplyr)
library(tidyr)
## Data  downloaded to  working directory 
## load the activity labels
activityLabels <- read.table("C:/Users/omard/Desktop/Coursera/assignment4/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/activity_labels.txt", header = FALSE)

## load the names of the features
featureNames <- read.table("C:/Users/omard/Desktop/Coursera/assignment4/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/features.txt")
## load train data set- ( by subject/ activity/ features)
subjectTrain <- read.table("C:/Users/omard/Desktop/Coursera/assignment4/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activityTrain <- read.table("C:/Users/omard/Desktop/Coursera/assignment4/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/y_train.txt", header = FALSE)
featuresTrain <- read.table("C:/Users/omard/Desktop/Coursera/assignment4/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/train/X_train.txt", header = FALSE)
## load test data set ( by subject/ activity/ features)
subjectTest <- read.table("C:/Users/omard/Desktop/Coursera/assignment4/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activityTest <- read.table("C:/Users/omard/Desktop/Coursera/assignment4/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/y_test.txt", header = FALSE)
featuresTest <- read.table("C:/Users/omard/Desktop/Coursera/assignment4/getdata-projectfiles-UCI HAR Dataset/UCI HAR Dataset/test/X_test.txt", header = FALSE)
## Merge both  training dataset & test dataset by subject/ activity & features
subject <- rbind(subjectTrain, subjectTest)
activity <- rbind(activityTrain, activityTest)
features <- rbind(featuresTrain, featuresTest)
## transpose the feature Names to columns
colnames(features) <- t(featureNames[2]) 
## Add Activity &  Subject to the column names
colnames(activity) <- "Activity"
colnames(subject) <- "Subject"
## Merge activity data, subject data, features data into one merged dataset
mergedData <- cbind(features,activity,subject)
## select columns that have Mean, Std words
columns_With_Mean_STD <- grep(".*Mean.*|.*Std.*", names(mergedData), ignore.case=TRUE) ## last 2 columns with Mean /Std :560- 561

requiredColumns <- c(columns_With_Mean_STD, 562, 563)
dim(mergedData)

extractedData <- mergedData[,requiredColumns]
dim(extractedData)
## convert  Activity field  with 6 labels  to a character variable
extractedData$Activity <- as.character(extractedData$Activity)
for (i in 1:6){
        extractedData$Activity[extractedData$Activity == i] <- as.character(activityLabels[i,2])
}

extractedData$Subject <- as.factor(extractedData$Subject)
extractedData <- data.table(extractedData)

tidyData <- aggregate(. ~Subject + Activity, extractedData, mean)
tidyData <- tidyData[order(tidyData$Subject,tidyData$Activity),]
write.table(tidyData, file = "Tidy_Data.txt", row.names = FALSE)
