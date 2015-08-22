
This document describes the procedures to obtain and clean the Samsung smart phone data using run_analysis.R script. The data was first downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, and then unzipped to a folder named "UCI HAR Dataset". This folder contains the following files that are related to this project:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt' and 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

The "run_anaysis.R" script can be run in Rstudio. Before running this script, please make sure that the directory containing the data files, which is the directory "UCI HAR Dataset", is set as the working directory, and Make sure that the "run_analysis.R" file is in the same dirctory as "UCI HAR Dataset" folder, but not within the "UCI HAR Dataset" folder.  

The "run_analysis.R" script will execute the following data cleanning and processing procedures:(1) merge the data in training and test datasets; (2)extracts only the measurements on the mean and standard deviation; (3)uses the descriptive activity names to name the activities in the data set; (4) labels the data set with descriptive variable names, and (5) create a tidy data set with the averages of each variable for each activity and each subject. 

Since there are altogehter 30 subjects in the training and test data, and each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING), we would expect that there should be 180 unique combinations of these subjects and activities, corresponding to 180 rows in the final tidy data. In addition, since there are 79 features that are related to mean and standard deviation, we would expect that there should be 79 columns corresponding to these features, together with the activity and subject columns, there should be 81 columns in the tidy data. Overall, we would expect the tidy data as a dataframe with 180 rows and 81 columns. 

The following is a detailed description of the data cleanning and processing procedures executed by "run_analysis.R".

1. read the raw data for the test dataset. These raw data are read from "X_test.txt", "y_test.txt", and "subject_test.txt", respectively.   These files are located in the Test folder within "UCI HAR Dataset" directory. The  data are read to the corrsponding dataframes "TestX", "testY" and "testSubject", respectively.

2. read features and activity label from "features.txt" and "activity_labels.txt" files. These files are located directly in "UCI HAR Dataset" folder. The  data are read to the corrsponding dataframes "features" and "activities" respectively.

3. Associate the test labels in "Y_test.txt" files with the corresponding activity names by joining "testY"" and "activities", and save the resulting join as "test_activity" dataframe. 

4. label the column names of "TestX" by the feature names using the second column of "features" dataframe.

5. bind the second column of "train_activity", "trainSubject" and "testX" dataframe using cbind function. The resulting "testX" dataframe contains the activity and subject information for each row.

6. read the raw data for the training dataset the same way as test dataset. Specifically, these raw data are read from "X_train.txt", "y_train.txt", and "subject_train.txt", respectively. The data files are located in the "Train" folder of the "UCI HAR Dataset" directory. The  data were read to the corrsponding dataframes "TrainX", "trainY" and "traintSubject", respectively.

7. Associate the train labels in "Y_train.txt" files with the corresponding activity names by joining "trainY"" and "activities", and save the resulting join as "train_activity" dataframe. 

8. label the column names of "trainX" by the feature names using the second column of "features" dataframe.

9. bind the second column of "train_activity", "trainSubject" and "trainX" dataframe using cbind function. The resulting "trainX" dataframe contains the activity and subject information for each row.

10. merge the testX and trainX dataframe by rbind function, and save the resulting dataframe as "test_train_combined"

11. find the indices of the columns in "test_train_combined" dataframe that contain either "mean" or "std" in the column names, as well as the column indices of "activity" and "subject", and extract data Only in these columns to a dataframe named "extracted_test_train"

12. now we need to group the data in "extracted_test_train" dataframe based on activity and subject of each row. To do this, an extra column called "subject_activity" was added to the "extracted_test_train" dataframe by pasting the content of "subject" and "activity" columns, so that each row in the dataframe is labeled by the subject and activity combination of that row.

13. split the dataframe "extracted_test_train" by "subject_activity" column. The split function returns a list named "grouped_data_activity_subject". Since there are 180 combinations of subject and activity values, this list returned by split function contains 180 elements. Each element is a dataframe. Within each dataframe, the "activity" column has the same value for all the rows, and the "subject" column also has the same value for all the rows in the dataframe. 

14. process each dataframe in "grouped_data_activity_subject" list by first finding the values of "subject" and "activity" columns for that  dataframe. Since the values of these two columns are the same for all the rows, we only need to find the values for these two columns by the values of the first row of the column 1, which is "activity" column, and the first row of the 2nd column, which is "subject" column, for activity and subject, respecitively, and then attaching those values to the means of all the other columns. This will result in a list returned. The "tidy_data" dataframe is then generated by binding all these lists obtained by processing all the dataframes in the "grouped_data_activity_subject" using rbind function. 

15. the resulting dataframe can be written to a txt file using the write.table() function, with row.name = FALSE. When the data is read by read.table(), the first line will be the column names. Therefore, If you check the dimension of the resulting dataframe, you will see that the dataframe has 181 row and 81 column.

