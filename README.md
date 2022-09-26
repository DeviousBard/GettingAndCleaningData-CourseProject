# Getting and Cleaning Data - Course Project
## Code Book
The data in in the code book is for the "Getting and Cleaning Data - Course 
Project" in the Johns Hopkins University Data Science Specialist track.  The
data is extracted from raw data obtained from the gyroscopic and accelerometer
readings from Samsung Galaxy S II phones worn on the waist.  The raw data can be
obtained here:  

http://archive.ics.uci.edu/ml/machine-learning-databases/00240/UCI%20HAR%20Dataset.zip

The data presented for this project is a subset of the merged training and 
testing data summarized by the average of each gyroscopic and accelerometer 
reading by subject and activity.

The following are the columns for the data:

1. subject - (numeric) The ID of the subject for which the reading was made
1. activity - (character) The activity name associated with the reading, which will be one of the following: (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
1. tBodyAcc_mean_X - (numeric) The average of the tbody accelerometer mean reading on the X-axis
1. tBodyAcc_mean_Y - (numeric) The average of the tbody accelerometer mean reading on the Y-axis
1. tBodyAcc_mean_Z - (numeric) The average of the tbody accelerometer mean reading on the Z-axis
1. tBodyAcc_std_X - (numeric) The average of the tbody accelerometer standard deviation reading on the X-axis
1. tBodyAcc_std_Y - (numeric) The average of the tbody accelerometer standard deviation reading on the Y-axis
1. tBodyAcc_std_Z - (numeric) The average of the tbody accelerometer standard deviation reading on the Z-axis
1. tGravityAcc_mean_X - (numeric) The average of the tgravity acceleration mean reading on the X-axis
1. tGravityAcc_mean_Y - (numeric) The average of the tgravity acceleration mean reading on the Y-axis
1. tGravityAcc_mean_Z - (numeric) The average of the tgravity acceleration mean reading on the Z-axis
1. tGravityAcc_std_X - (numeric) The average of the tgravity acceleration standard deviation reading on the X-axis
1. tGravityAcc_std_Y - (numeric) The average of the tgravity acceleration standard deviation reading on the Y-axis
1. tGravityAcc_std_Z - (numeric) The average of the tgravity acceleration standard deviation reading on the Z-axis
1. tBodyAccJerk_mean_X - (numeric) The average of the tbody acceleration jerk mean reading on the X-axis
1. tBodyAccJerk_mean_Y - (numeric) The average of the tbody acceleration jerk mean reading on the Y-axis
1. tBodyAccJerk_mean_Z - (numeric) The average of the tbody acceleration jerk mean reading on the Z-axis
1. tBodyAccJerk_std_X - (numeric) The average of the tbody acceleration jerk standard deviation reading on the X-axis
1. tBodyAccJerk_std_Y - (numeric) The average of the tbody acceleration jerk standard deviation reading on the Y-axis
1. tBodyAccJerk_std_Z - (numeric) The average of the tbody acceleration jerk standard deviation reading on the Z-axis
1. tBodyGyro_mean_X - (numeric) The average of the tbody gyroscopic mean reading on the X-axis
1. tBodyGyro_mean_Y - (numeric) The average of the tbody gyroscopic mean reading on the Y-axis
1. tBodyGyro_mean_Z - (numeric) The average of the tbody gyroscopic mean reading on the Z-axis
1. tBodyGyro_std_X - (numeric) The average of the tbody gyroscopic standard deviation reading on the X-axis
1. tBodyGyro_std_Y - (numeric) The average of the tbody gyroscopic standard deviation reading on the Y-axis
1. tBodyGyro_std_Z - (numeric) The average of the tbody gyroscopic standard deviation reading on the Z-axis
1. tBodyGyroJerk_mean_X - (numeric) The average of the tbody gyroscopic jerk mean reading on the X-axis
1. tBodyGyroJerk_mean_Y - (numeric) The average of the tbody gyroscopic jerk mean reading on the Y-axis
1. tBodyGyroJerk_mean_Z - (numeric) The average of the tbody gyroscopic jerk mean reading on the Z-axis
1. tBodyGyroJerk_std_X - (numeric) The average of the tbody gyroscopic jerk standard deviation reading on the X-axis
1. tBodyGyroJerk_std_Y - (numeric) The average of the tbody gyroscopic jerk standard deviation reading on the Y-axis
1. tBodyGyroJerk_std_Z - (numeric) The average of the tbody gyroscopic jerk standard deviation reading on the Z-axis
1. tBodyAccMag_mean - (numeric) The average of the tbody acceleration magnet mean reading
1. tBodyAccMag_std - (numeric) The average of the tbody acceleration magnet standard deviation reading
1. tGravityAccMag_mean - (numeric) The average of the tbody gravity acceleration magnet mean reading
1. tGravityAccMag_std - (numeric) The average of the tbody gravity acceleration magnet standard deviation reading
1. tBodyAccJerkMag_mean - (numeric) The average of the tbody gravity acceleration jerk magnet mean reading
1. tBodyAccJerkMag_std - (numeric) The average of the tbody gravity acceleration jerk magnet standard deviation reading
1. tBodyGyroMag_mean - (numeric) The average of the tbody gyroscopic magnet mean reading
1. tBodyGyroMag_std - (numeric) The average of the tbody gyroscopic magnet standard deviation reading
1. tBodyGyroJerkMag_mean - (numeric) The average of the tbody gyroscopic jerk magnet mean reading
1. tBodyGyroJerkMag_std - (numeric) The average of the tbody gyroscopic jerk magnet standard deviation reading
1. fBodyAcc_mean_X - (numeric) The average of the fbody acceleration mean reading on the X-axis
1. fBodyAcc_mean_Y - (numeric) The average of the fbody acceleration mean reading on the Y-axis
1. fBodyAcc_mean_Z - (numeric) The average of the fbody acceleration mean reading on the Z-axis
1. fBodyAcc_std_X - (numeric) The average of the fbody acceleration standard deviation reading on the X-axis
1. fBodyAcc_std_Y - (numeric) The average of the fbody acceleration standard deviation reading on the Y-axis
1. fBodyAcc_std_Z - (numeric) The average of the fbody acceleration standard deviation reading on the Z-axis
1. fBodyAccJerk_mean_X - (numeric) The average of the fbody acceleration jerk mean reading on the X-axis
1. fBodyAccJerk_mean_Y - (numeric) The average of the fbody acceleration jerk mean reading on the Y-axis
1. fBodyAccJerk_mean_Z - (numeric) The average of the fbody acceleration jerk mean reading on the Z-axis
1. fBodyAccJerk_std_X - (numeric) The average of the fbody acceleration jerk standard deviation reading on the X-axis
1. fBodyAccJerk_std_Y - (numeric) The average of the fbody acceleration jerk standard deviation reading on the Y-axis
1. fBodyAccJerk_std_Z - (numeric) The average of the fbody acceleration jerk standard deviation reading on the Z-axis
1. fBodyGyro_mean_X - (numeric) The average of the fbody gyroscopic mean reading on the X-axis
1. fBodyGyro_mean_Y - (numeric) The average of the fbody gyroscopic mean reading on the Y-axis
1. fBodyGyro_mean_Z - (numeric) The average of the fbody gyroscopic mean reading on the Z-axis
1. fBodyGyro_std_X - (numeric) The average of the fbody gyroscopic standard deviation reading on the X-axis
1. fBodyGyro_std_Y - (numeric) The average of the fbody gyroscopic standard deviation reading on the Y-axis
1. fBodyGyro_std_Z - (numeric) The average of the fbody gyroscopic standard deviation reading on the Z-axis
1. fBodyAccMag_mean - (numeric) The average of the fbody acceleration magnet mean reading
1. fBodyAccMag_std - (numeric) The average of the fbody acceleration magnet standard deviation reading
1. fBodyBodyAccJerkMag_mean - (numeric) The average of the fbody acceleration jerk magnet mean reading
1. fBodyBodyAccJerkMag_std - (numeric) The average of the fbody acceleration magnet standard deviation reading
1. fBodyBodyGyroMag_mean - (numeric) The average of the fbody gyroscopic magnet mean reading
1. fBodyBodyGyroMag_std - (numeric) The average of the fbody gyroscopic magnet standard deviation reading
1. fBodyBodyGyroJerkMag_mean - (numeric) The average of the fbody gyroscopic jerk magnet mean reading
1. fBodyBodyGyroJerkMag_std - (numeric) The average of the fbody gyroscopic jerk magnet standard deviation reading

## Data Cleaning Explanation
The summarized data was extracted from the raw data by running the 
"run_analysis.R" file.  There are eight files from which the the raw data was 
extracted and combined to form the final summarized data.  The following are the
files used:

1. activity_labels.txt - Contains the ID (numeric) and text (character) of the activities measured (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
2. features.txt - Contains ID (numeric) and the text (character) for the column names of the 561 columns in the raw data
3. train/X_train.txt - Contains the raw gyroscopic and accelerometer reading data for all 561 columns
4  train/Y_train.txt - Contains the ID (numeric) of the activity for each row of data in the "X_train.txt" file
5. train/subject_test.txt - Contains the ID (numeric) of the subject for each row of data in the "X_train.txt" file
6. test/X_test.txt - Contains the raw gyroscopic and accelerometer reading data for all 561 columns
7. test/Y_test.txt - Contains the ID (numeric) of the activity for each row of data in the "X_test.txt" file
8. test/subject_test.txt - Contains the ID (numeric) of the subject for each row of data in the "X_test.txt" file

The following are the steps the "run_analysis.R" file uses to tidy and combine 
the data:

1. Read the "features.txt" file into a data frame and extract into vectors only the IDs and column name text that contains a "-mean()" or "-std()" in the column name text.
2. Further scrub the column names to remove any character that is NOT alphnumeric or a hyphen, and then replace all of the hypens with under bars to make the column names more usable.
3. Read the "activity_labels.txt" file into a data frame and extract only the activity text into a vector.
4. Read the "train/X_train.txt" file as a character string and manipulate it with string replacements to create and save a CSV file.
5. Read the CSV file and get a subset of ONLY the columns with mean and standard deviation, by using the features IDs vector created in step 1.
6. Assign the column names to the new data subset from the features column names vector created in step 1.
7. Read the "train/y_train.txt" file, and replace all of the numeric IDs with the text equivalents from the activity text vector created in step 3.
8. Append the activity data to the beginning of the data subset created in steps 5 and 6, and assign it the column name "activity".
9. Read the "train/subject_train.txt" and append the data to the beginning of the data subset created in step 8, and assign it the column name "subject".
10. Repeat steps 4 through 9 with the testing data located in the "test" directory with the files "test/X_test.txt", "test/Y_test.tx", and "test/subject_test.txt", respectively to create another data frame containing a subset of the testing data.
11. Combine the training and testing data frames into one larger data frame by adding the testing data rows to the end of the training data rows.
12. Finally summarize the combined data set by obtaining the average of each reading by subject and activity, and output it to the file "acc_data_mean.txt".
