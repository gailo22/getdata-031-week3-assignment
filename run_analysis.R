# You should create one R script called run_analysis.R that does the following.
# 1. Merges the training and the test sets to create one data set.
x_train <- read.table("train/X_train.txt")
x_test <- read.table("test/X_test.txt")
X <- rbind(x_train, x_test)

subject_train <- read.table("train/subject_train.txt")
subject_test <- read.table("test/subject_test.txt")
S <- rbind(subject_train, subject_test)

y_train <- read.table("train/y_train.txt")
y_test <- read.table("test/y_test.txt")
Y <- rbind(y_train, y_test)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
features <- read.table("features.txt")
mean_and_std_features <- grep("-mean\\(\\)|-std\\(\\)", features[, 2])
X <- X[, mean_and_std_features]
names(X) <- features[mean_and_std_features, 2]
names(X) <- gsub("\\(|\\)", "", names(X))

# 3. Uses descriptive activity names to name the activities in the data set
activities <- read.table("activity_labels.txt")
activities[, 2] = gsub("_", "", as.character(activities[, 2]))
Y[,1] = activities[Y[,1], 2]
names(Y) <- "Activity"

# 4. Appropriately labels the data set with descriptive variable names.
names(S) <- "Subject"
cleaned_data <- cbind(S, Y, X)

# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
uniqueSubjects = unique(S)[,1]
numSubjects = length(unique(S)[,1])
numActivities = length(activities[,1])
numCols = dim(cleaned_data)[2]
result = cleaned_data[1:(numSubjects*numActivities), ]

row = 1
for (subject in 1:numSubjects) {
    for (activity in 1:numActivities) {
        result[row, 1] = uniqueSubjects[subject]
        result[row, 2] = activities[activity, 2]
        tmp <- cleaned_data[cleaned_data$Subject==subject & cleaned_data$Activity==activities[activity, 2], ]
        result[row, 3:numCols] <- colMeans(tmp[, 3:numCols])
        row = row+1
    }
}

# write to file
write.table(result, "final_tidy_data.txt", row.names = FALSE)
