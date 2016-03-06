# README.md
 Getting and Cleaning Data Course Project
Getting and Cleaning Data Course Project/ README.md

PROJECT INFORMATION:
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
Data Source:
full description is available at the site where the data was obtained:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones
The data is available at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
Data Analysis:
#Libraries used:  reshape2, data.table
# Load the various datasets
	"./test/subject_test.txt")
	"./test/x_test.txt")
	"./test/y_test.txt")

	"./train/subject_train.txt")
	"./train/x_train.txt")
	"./train/y_train.txt")
	
	"./features.txt")
	"./activity_labels.txt")
# Merge the test and train subject datasets
# Merge the test and train labels, applying the textlabels
 
	• activity. Labels:      V1        V2
			1                          WALKING
			2                  WALKING_UPSTAIRS
			3                  WALKING_DOWNSTAIRS
			4                           SITTING
			5                             STANDING
			6                             LAYING
	•  data. Frame:    10299 obs. of  563 variables

# Merge all three datasets
# Subset the merged data to include only the mean and std variables
# Compute the means, grouped by subject/label
# Output final tidy dataset
