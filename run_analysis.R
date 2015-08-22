
#######################################################################
####THis is the r script for "Getting and Cleannig Data" course project
###Assuming the Samsung data is in the working directory. Here, the data
###is stored in UCI HAR directory, and the test and train directories
###contain the raw data
###
###  author: Yuan Huang
###  August 21, 2015
########################################################################


library(plyr)

# read the raw data for the test dataset 
testX<-read.table("./test/X_test.txt")
testY<-read.table("./test/y_test.txt")
testSubject<-read.table("./test/subject_test.txt")

# read features and activities from the corresponding files
features<-read.table("./features.txt")
activities<-read.table("./activity_labels.txt",stringsAsFactors = FALSE)

# join the "testY" and "activities" data frame, so that each test label in testY is associated
# with its corresponding activity name.
test_activity<-join(testY,activities,type="inner")

#define the names of testX columns by the feature names
names(testX)=features[,2]

# add "activity" and "subject" columns to "testX" data frame, and define the 
# names of these two columns as "activity" and "subject", respectively
testX<-cbind(cbind(test_activity[,2],testSubject),testX)
names(testX)[1:2]=c("activity","subject")

# read the raw data for the train dataset 
trainX<-read.table("./train/X_train.txt")
trainY<-read.table("./train/y_train.txt")
trainSubject<-read.table("./train/subject_train.txt")

# join the "trainY" and "activities" data frame, so that each train label in trainY is associated
# with its corresponding activity name.
train_activity<-join(trainY,activities,type="inner")

# define the names of "trainX" columns by the feature names
names(trainX)=features[,2]

# add "activity" and "subject" columns to "trainX" data frame, and define the 
# names of these two columns as "activity" and "subject", respectively
trainX<-cbind(cbind(train_activity[,2],trainSubject),trainX)
names(trainX)[1:2]=c("activity","subject")

# combine the testX and trainX data frame, so that test and train data sets are merged
test_train_combined<-rbind(testX,trainX)

# find the indices of the columns that contains either "std" or "mean" by regular expression operation
# also the indices of "activity" column and "subject" column are included in the returned vector
selected_names<-grep("activity|subject|std|mean",names(test_train_combined))

# only select "activity" column, "subject" column and columns that contain 
# either "std" or "mean" keywords in their column names to the extracted_test_train data frame
extracted_test_train<-test_train_combined[,selected_names]

# add a new column to extracted_test_train data frameby combining the content of "subject" column
# and "activity column" for each row. this new column is named as "subject_activity". 
# This column will be used to split the extracted_test_train data frame based on
# the combination of subject and activity columns for each row
extracted_test_train$subject_activity<-paste(extracted_test_train$subject,extracted_test_train$activity)

# split the "extracted_test_train" dataframe based on subject and activity. 
# The output is a list. Each element in this list is a data frame. 
# All the rows of each dataframe have the same "subject" and "activity".
# The other columns of each data frame contains 79 columns that contains "mean" or "sd" their column names
# For different data frames, they have different subject and activity combination.
grouped_data_activity_suject<-split(extracted_test_train,extracted_test_train$subject_activity)

# for each dataframe in the "grouped_data_activity_suject" list, output a new list with the following properties: 
# 1. The name of the first element of this list is "subject", and its value is the subject of the input data frame.
#    The name of the second element is "activity", and its value is the activity of the input data frame.
# 2. Starting from element 3, the element equals to the correpsonding column mean of the input data frame
#
# Lists as the output of all the data frames in "grouped_data_activity_suject" list are bounded togehter to form 
# a new data frame. This resulting data frame is the tity data, which contains 180 rows, and 81 columns.
tidy_data<-do.call(rbind,lapply(grouped_data_activity_suject,function(df) c(list("subject"=df[1,2],"activity"=df[1,1]),lapply(df[,3:81],mean))))

