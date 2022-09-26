# File:    run_analysis.R
# Project: Getting and Cleaning Data - Course Project

# This file tidies and merges the training datasets (in directory 
# "UCI HAR Dataset/train") with the test datasets (in directory 
# "UCI HAR Dataset/test).

# Install and load the required R packages
if (!require("readr")) install.packages("readr")
library(readr)
if (!require("dplyr")) install.packages("dplyr")
library(dplyr)
if (!require("stringr")) install.packages("stringr")
library(stringr)


# Read the feature names from the "features.txt" file. These names will become 
# the column names of the data. Since only the columns that have a mean or 
# standard deviation are important. The data will be filtered using "grepl" to 
# only return the feature names that contain "-mean()" or "-std()"
temp <- read_delim("features.txt", delim = " ", 
                   col_names = FALSE)
colnames(temp) <- c("id", "name")

# Extract into a vector only the ids where the feature name contains either 
# "-mean()" or "-std()" in its text.
feature_ids <- as.vector(temp$id[
    grepl("\\-mean\\(\\)", temp$name) | 
        grepl("\\-std\\(\\)", temp$name)
])

# Extract into a vector only the names where the feature name contains either 
# "-mean()" or "-std()" in its text.
feature_names <- as.vector(temp$name[
    grepl("\\-mean\\(\\)", temp$name) | 
        grepl("\\-std\\(\\)", temp$name)
])

# Clean up the feature names to remove all non-alphanumeric characters, and 
# replace all hyphens with under bars.
for (index in seq(1:length(feature_names))) {
    feature_names[index] <- str_replace_all(feature_names[index], "[^A-Za-z\\-\\d]", "")
    feature_names[index] <- str_replace_all(feature_names[index], "\\-", "_")
}

# Remove the temporary variables created to build the feature names vectors.
rm(temp)

# Read the activity names into a vector from the "activity_labels.txt" file.
temp <- read_delim("activity_labels.txt", 
                   delim = " ", col_names = FALSE)
colnames(temp) <- c("id", "name")
activity_names <- as.vector(temp$name)

# Remove the temporary variables created to build the activity names vector.
rm(temp)


# Read the raw training observations data from the "X_train.txt" file as
# a large text string into a temporary variable.
temp <- readLines("train\\X_train.txt")

# Turn the raw data into a temporary CSV file in two steps.

# First replace any double spaces with a single comma. Double spaces precede 
# positive numbers in the raw data.
temp_csv <- gsub(pattern = "  ", replace = ",", x = temp)

# Second replace any single spaces with a single comma. Single spaces precede
# negative numbers in the raw data.
temp_csv <- gsub(pattern = " ", replace = ",", x = temp_csv)

# Write the new temporary CSV file to "X_train.csv"
writeLines(temp_csv, "train\\X_train.csv")

# Remove the temporary variables created to build the CSV file.
rm(temp)
rm(temp_csv)

# Read the temporary CSV file "X_train.csv" into a data frame (NOTE: The raw
# data DOES NOT contain column names, and while tidying the data into a CSV
# file, an extra comma was introduced as the first character of each row, which
# causes an erroneous extra column to be created as the first column of the data
# frame. To eliminate the erroneous column, a subset of the data frame is 
# created by selecting only the 2nd column through the last column).
train <- read_csv("train\\X_train.csv", col_names = FALSE)
train <- train[2:562]

# Create a subset of the "train" data frame using only the columns contained
# in the "feature_ids" vector.
train <- train[feature_ids]

# Assign the column names to "train" data frame from the "feature_names" vector.
colnames(train) <- feature_names

# Read the activities associated with each training observation row from the 
# "y_train.txt" file and assign them to the column name "activity".
activities <- read_delim("train\\y_train.txt", 
                         col_names = FALSE, delim = ",")
colnames(activities) <- c("activity")

# Convert the "activity" column to character
activities$activity <- as.character(activities$activity)

# Change all of the numeric activity values to their corresponding activity
# name (i.e. 1 = "WALKING", 2 = "WALKING_UPSTAIRS", etc.)
for (index in seq(1:length(activity_names))) {
    activities["activity"][activities["activity"] == as.character(index)] <- 
        activity_names[index]
}

# Append the "activity" column to the beginning of the "train" data frame, and
# set the new column name to "activity".
train <- cbind(activities$activity, train)
colnames(train)[1] <- "activity"

# Remove temporary variable created for the activities
rm(index)
rm(activities)

# Read the subject data from the "subject_train.txt" file.
subjects <- read_delim("train\\subject_train.txt", 
                       col_names = FALSE, delim = ",")
colnames(subjects) <- c("subject")

# Append the "subjects" column to the beginning of the "train" data frame, and
# set the new column name to "subject"
train <- cbind(subjects$subject, train)
colnames(train)[1] <- "subject"

# Remove temporary variable created for the subjects
rm(subjects)


# Read the raw testing observations data from the "X_test.txt" file as
# a large text string into a temporary variable.
temp <- readLines("test\\X_test.txt")

# Turn the raw data into a temporary CSV file in two steps.

# First replace any double spaces with a single comma. Double spaces precede 
# positive numbers in the raw data.
temp_csv <- gsub(pattern = "  ", replace = ",", x = temp)

# Second replace any single spaces with a single comma. Single spaces precede
# negative numbers in the raw data.
temp_csv <- gsub(pattern = " ", replace = ",", x = temp_csv)

# Write the new temporary CSV file to "X_test.csv"
writeLines(temp_csv, "test\\X_test.csv")

# Remove the temporary variables created to build the CSV file.
rm(temp)
rm(temp_csv)

# Read the temporary CSV file "X_test.csv" into a data frame (NOTE: The raw
# data DOES NOT contain column names, and while tidying the data into a CSV
# file, an extra comma was introduced as the first character of each row, which
# causes an erroneous extra column to be created as the first column of the data
# frame. To eliminate the erroneous column, a subset of the data frame is 
# created by selecting only the 2nd column through the last column).
test <- read_csv("test\\X_test.csv", col_names = FALSE)
test <- test[2:562]

# Create a subset of the "test" data frame using only the columns contained
# in the "feature_ids" vector.
test <- test[feature_ids]

# Assign the column names to "test" data frame from the "feature_names" vector.
colnames(test) <- feature_names

# Read the activities associated with each testing observation row from the 
# "y_test.txt" file and assign them to the column name "activity".
activities <- read_delim("test\\y_test.txt", 
                         col_names = FALSE, delim = ",")
colnames(activities) <- c("activity")

# Convert the "activity" column to character
activities$activity <- as.character(activities$activity)

# Change all of the numeric activity values to their corresponding activity
# name (i.e. 1 = "WALKING", 2 = "WALKING_UPSTAIRS", etc.)
for (index in seq(1:length(activity_names))) {
    activities["activity"][activities["activity"] == as.character(index)] <- 
        activity_names[index]
}

# Append the "activity" column to the beginning of the "test" data frame, and
# set the new column name to "activity".
test <- cbind(activities$activity, test)
colnames(test)[1] <- "activity"

# Remove temporary variable created for the activities
rm(index)
rm(activities)

# Read the subject data from the "subject_test.txt" file.
subjects <- read_delim("test\\subject_test.txt", 
                       col_names = FALSE, delim = ",")
colnames(subjects) <- c("subject")

# Append the "subjects" column to the beginning of the "test" data frame, and
# set the new column name to "subject"
test <- cbind(subjects$subject, test)
colnames(test)[1] <- "subject"

# Remove temporary variable created for the subjects
rm(subjects)

# Combine the "train" and "test" data frames into the "acc_data" data frame.
acc_data <- rbind(train, test)

# Remove temporary variables used to create the "acc_data" data frame.
rm(train)
rm(test)
rm(activity_names)
rm(feature_ids)
rm(feature_names)

# Get the mean of each accelerometer reading by subject and activity
acc_data_mean <- acc_data %>%
    group_by(subject, activity) %>% 
    summarize(across(tBodyAcc_mean_X:fBodyBodyGyroJerkMag_std, mean))

# Output the "acc_data_mean" table to a text file named "acc_data_mean.txt"
write.table(acc_data_mean, file = "acc_data_mean.txt", 
            row.names = FALSE)

