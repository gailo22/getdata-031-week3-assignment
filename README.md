This describe how the run_analysis.R works as following:
-----------

####  Merges the training and the test sets to create one data set.
  Using rbind to merge training and testing dataset for each X, subject and y data.

#### Extracts only the measurements on the mean and standard deviation for each measurement.
  Read features from features.txt and extract only mean and standard deviation and use this to subset data from X.

#### Uses descriptive activity names to name the activities in the data set
  Read descriptive activity in activity_labels.txt and use this to assign names to Y.
  
#### Appropriately labels the data set with descriptive variable names.
  Assign names to subject and use cbind to merge columns for Subject, Activity and Measurements.

#### From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
  Write the final data to file name "final_tidy_data.txt"
