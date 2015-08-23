Code Book
===============
This code book describe how the run_analysis.R works as following:

  * Merges the training and the test sets to create one data set.
  Using rbind to merge training and testing dataset for each X, subject and y data.

  * Extracts only the measurements on the mean and standard deviation for each measurement.
  Read features from features.txt and extract only mean and standard deviation and use this to subset data from X.

  * Uses descriptive activity names to name the activities in the data set
  Read descriptive activity in activity_labels.txt and use this to assign names to Y.

  * Appropriately labels the data set with descriptive variable names.
  Assign names to subject and use cbind to merge columns for Subject, Activity and Measurements.

  * From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  Write the final data to file name "final_tidy_data.txt"

  * Variables in final data set:
  There are 180 rows and 68 columns in the dataset as following:

  [1] "Subject"                   "Activity"                  "tBodyAcc-mean-X"
  [4] "tBodyAcc-mean-Y"           "tBodyAcc-mean-Z"           "tBodyAcc-std-X"
  [7] "tBodyAcc-std-Y"            "tBodyAcc-std-Z"            "tGravityAcc-mean-X"
  [10] "tGravityAcc-mean-Y"        "tGravityAcc-mean-Z"        "tGravityAcc-std-X"
  [13] "tGravityAcc-std-Y"         "tGravityAcc-std-Z"         "tBodyAccJerk-mean-X"
  [16] "tBodyAccJerk-mean-Y"       "tBodyAccJerk-mean-Z"       "tBodyAccJerk-std-X"
  [19] "tBodyAccJerk-std-Y"        "tBodyAccJerk-std-Z"        "tBodyGyro-mean-X"
  [22] "tBodyGyro-mean-Y"          "tBodyGyro-mean-Z"          "tBodyGyro-std-X"
  [25] "tBodyGyro-std-Y"           "tBodyGyro-std-Z"           "tBodyGyroJerk-mean-X"  
  [28] "tBodyGyroJerk-mean-Y"      "tBodyGyroJerk-mean-Z"      "tBodyGyroJerk-std-X"
  [31] "tBodyGyroJerk-std-Y"       "tBodyGyroJerk-std-Z"       "tBodyAccMag-mean"
  [34] "tBodyAccMag-std"           "tGravityAccMag-mean"       "tGravityAccMag-std"
  [37] "tBodyAccJerkMag-mean"      "tBodyAccJerkMag-std"       "tBodyGyroMag-mean"
  [40] "tBodyGyroMag-std"          "tBodyGyroJerkMag-mean"     "tBodyGyroJerkMag-std"
  [43] "fBodyAcc-mean-X"           "fBodyAcc-mean-Y"           "fBodyAcc-mean-Z"
  [46] "fBodyAcc-std-X"            "fBodyAcc-std-Y"            "fBodyAcc-std-Z"
  [49] "fBodyAccJerk-mean-X"       "fBodyAccJerk-mean-Y"       "fBodyAccJerk-mean-Z"
  [52] "fBodyAccJerk-std-X"        "fBodyAccJerk-std-Y"        "fBodyAccJerk-std-Z"
  [55] "fBodyGyro-mean-X"          "fBodyGyro-mean-Y"          "fBodyGyro-mean-Z"
  [58] "fBodyGyro-std-X"           "fBodyGyro-std-Y"           "fBodyGyro-std-Z"
  [61] "fBodyAccMag-mean"          "fBodyAccMag-std"           "fBodyBodyAccJerkMag-mean"
  [64] "fBodyBodyAccJerkMag-std"   "fBodyBodyGyroMag-mean"     "fBodyBodyGyroMag-std"
  [67] "fBodyBodyGyroJerkMag-mean" "fBodyBodyGyroJerkMag-std"
