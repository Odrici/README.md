# README.md / Getting and Cleaning Data Course Project

 PROJECT INFORMATION:
Experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
DATA SOURCE:
Using embedded accelerometer and gyroscope,  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz were captured. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.
DATA MEASUREMENTS:
A total of 33 measurements were collected including the 3 dimensions  X,Y, and Z axes.
-The units given are g’s for the accelerometer and rad/sec for the gyro and g/sec and rad/sec/sec for the corresponding jerks.
-leading t or f is based on time or frequency measurements
These signals were used to estimate variables of the feature vector for each pattern:
tBodyAcc-XYZ;
tGravityAcc-XYZ;
tBodyAccJerk-XYZ;
tBodyGyro-XYZ;
tBodyGyroJerk-XYZ;
tBodyAccMag;
tGravityAccMag;
tBodyAccJerkMag;
tBodyGyroMag;
tBodyGyroJerkMag;
fBodyAcc-XYZ;
fBodyAccJerk-XYZ;
fBodyGyro-XYZ;
fBodyAccMag;
fBodyAccJerkMag;
fBodyGyroMag;
fBodyGyroJerkMag;

Body = related to body movement.
Gravity = acceleration of gravity
Acc = accelerometer measurement
Gyro = gyroscopic measurements
Jerk = sudden movement acceleration
Mag = magnitude of movement

The set of variables that were estimated from these signals are:

mean(): Mean value -calculated for each subject for each activity 
std(): Standard deviation -calculated for each subject for each activity 
 
   
   
 
