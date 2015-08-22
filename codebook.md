# summary of the project
This is the code book for the tidy data obtained by cleaning and processing of the Samsung smartphone raw data processed by run_analysis.r script. For the details of how this script works and how the raw data is transformed to the tidy data, please refer to Readme.rm file. 
The data in the tidy data are the averages of the corresponding raw data in the Samsung smartphone data for each subject and activity. In addition, only the columns containing "mean" and "std" in the column names are included in the tidy data. 

######Guide to create the tidy data file
The data was first downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, and then unzipped to a folder named "UCI HAR Dataset". This folder contains the following files that are related to this project:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt' and 'test/subject_test.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.

These data files are processed by the "run_anaysis.R" script in Rstudio. Before running this script, please make sure that the directory containing the data files, which is the directory "UCI HAR Dataset", is set as the working directory, and Make sure that the "run_analysis.R" file is in the same dirctory as "UCI HAR Dataset" folder, but not within the "UCI HAR Dataset" folder. For the details of "run_analysis.R" script, and how it transforms the raw data to the tidy data for data cleaning and processing, please refer to the Readme.rm file.

#describe the varialbes/column names
1. Subject
Subject who performed the activity. A subject represented as a number from 1-30

2. Activity
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

3. tBodyAcc-mean()-X
average of body acceleration mean on X direction
unit: normalized variable, non-dimensional
 
4. tBodyAcc-mean()-Y
average of body acceleration mean on Y direction
unit: normalized variable, non-dimensional

5. tBodyAcc-mean()-Z
average of body acceleration mean on Z direction
unit: normalized variable, non-dimensional 

6. tBodyAcc-std()-X
average of body acceleration standard deviation on X direction
unit: normalized variable, non-dimensional

7. tBodyAcc-std()-Y
average of body acceleration standard deviation on Y direction
unit: normalized variable, non-dimensional

8. tBodyAcc-std()-Z
average of body acceleration standard deviation on Z direction
unit: normalized variable, non-dimensional

9. tGravityAcc-mean()-X
average of gravity acceleration mean on X direction
unit: normalized variable, non-dimensional

10. tGravityAcc-mean()-Y
average of gravity acceleration mean on Y direction
unit: normalized variable, non-dimensional

11. tGravityAcc-mean()-Z
average of gravity acceleration mean on Z direction
unit: normalized variable, non-dimensional

12. tGravityAcc-std()-X
average of gravity acceleration standard deviation on X direction
unit: normalized variable, non-dimensional

13. tGravityAcc-std()-Y
average of gravity acceleration standard deviation on Y direction
unit: normalized variable, non-dimensional

14. tGravityAcc-std()-Z
average of gravity acceleration standard deviation on Z direction
unit: normalized variable, non-dimensional

15. tBodyAccJerk-mean()-X
average of body linear acceleration mean on X direction
unit: normalized variable, non-dimensional

16. tBodyAccJerk-mean()-Y
average of body linear acceleration mean on Y direction
unit: normalized variable, non-dimensional

17. tBodyAccJerk-mean()-Z
average of body linear acceleration mean on Z direction
unit: normalized variable, non-dimensional

18. tBodyAccJerk-std()-X
average of body linear acceleration standard deviation on X direction
unit: normalized variable, non-dimensional

19. tBodyAccJerk-std()-Y
average of body linear acceleration standard deviation on Y direction
unit: normalized variable, non-dimensional

20. tBodyAccJerk-std()-Z
average of body linear acceleration standard deviation on Z direction
unit: normalized variable, non-dimensional

21. tBodyGyro-mean()-X
average of body gyroscope mean on X direction
unit: normalized variable, non-dimensional

22. tBodyGyro-mean()-Y
average of body gyroscope mean on Y direction
unit: normalized variable, non-dimensional

23. tBodyGyro-mean()-Z
average of body gyroscope mean on Z direction
unit: normalized variable, non-dimensional

24. tBodyGyro-std()-X
average of body gyroscope standard deviation on X direction
unit: normalized variable, non-dimensional

25. tBodyGyro-std()-Y
average of body gyroscope standard deviation on Y direction
unit: normalized variable, non-dimensional

26. tBodyGyro-std()-Z
average of body gyroscope standard deviation on Z direction
unit: normalized variable, non-dimensional

27. tBodyGyroJerk-mean()-X
average of body angular velocity mean on X direction
unit: normalized variable, non-dimensional

28. tBodyGyroJerk-mean()-Y
average of body angular velocity mean on Y direction
unit: normalized variable, non-dimensional

29. tBodyGyroJerk-mean()-Z
average of body angular velocity mean on Z direction
unit: normalized variable, non-dimensional

30. tBodyGyroJerk-std()-X
average of body angular velocity standard deviation on X direction
unit: normalized variable, non-dimensional

31. tBodyGyroJerk-std()-Y
average of body angular velocity standard deviation on Y direction
unit: normalized variable, non-dimensional

32. tBodyGyroJerk-std()-Z
average of body angular velocity standard deviation on Z direction
unit: normalized variable, non-dimensional

33. tBodyAccMag-mean()
average of body acceleration magnitude mean
unit: normalized variable, non-dimensional

34. tBodyAccMag-std()
average of body acceleration magnitude standard deviation
unit: normalized variable, non-dimensional

35. tGravityAccMag-mean()
average of gravity acceleration magnitude mean
unit: normalized variable, non-dimensional

36. tGravityAccMag-std()
average of gravity acceleration magnitude standard deviation
unit: normalized variable, non-dimensional

37. tBodyAccJerkMag-mean()
average of body linear acceleration magnitude mean
unit: normalized variable, non-dimensional

38. tBodyAccJerkMag-std()
average of body linear acceleration magnitude mean
unit: normalized variable, non-dimensional

39. tBodyGyroMag-mean()
average of body gyroscope magnitude mean
unit: normalized variable, non-dimensional

40. tBodyGyroMag-std()
average of body gyroscope magnitude standard deviation
unit: normalized variable, non-dimensional

41. tBodyGyroJerkMag-mean()
average of body angular velocity magnitude mean
unit: normalized variable, non-dimensional

42. tBodyGyroJerkMag-std()
average of body angular velocity magnitude standard deviation
unit: normalized variable, non-dimensional

43. fBodyAcc-mean()-X
average of Fast Fourier Transformed body acceleration mean on X direction
unit: normalized variable, non-dimensional

44. fBodyAcc-mean()-Y
average of Fast Fourier Transformed body acceleration mean on Y direction
unit: normalized variable, non-dimensional

45. fBodyAcc-mean()-Z
average of Fast Fourier Transformed body acceleration mean on Z direction
unit: normalized variable, non-dimensional

46. fBodyAcc-std()-X 
average of Fast Fourier Transformed body acceleration standard deviation on X direction
unit: normalized variable, non-dimensional

47. fBodyAcc-std()-Y
average of Fast Fourier Transformed body acceleration standard deviation on Y direction
unit: normalized variable, non-dimensional

48. fBodyAcc-std()-Z
average of Fast Fourier Transformed body acceleration standard deviation on Z direction
unit: normalized variable, non-dimensional

49. fBodyAcc-meanFreq()-X
average of the mean frequency of the Fast Fourier Transformed body acceleration on X direction by weighted average of the frequency components 
unit: normalized variable, non-dimensional

50. fBodyAcc-meanFreq()-Y
average of the mean frequency of the Fast Fourier Transformed body acceleration on Y direction by weighted average of the frequency components 
unit: normalized variable, non-dimensional

51. fBodyAcc-meanFreq()-Z
average of the mean frequency of the Fast Fourier Transformed body acceleration on Z direction by weighted average of the frequency components
unit: normalized variable, non-dimensional

52. fBodyAccJerk-mean()-X
average of the Fast Fourier Transformed body linear acceleration mean on X direction
unit: normalized variable, non-dimensional


53. fBodyAccJerk-mean()-Y
average of the Fast Fourier Transformed body linear acceleration mean on Y direction
unit: normalized variable, non-dimensional

54. fBodyAccJerk-mean()-Z
average of the Fast Fourier Transformed body linear acceleration mean on Z direction
unit: normalized variable, non-dimensional

55. fBodyAccJerk-std()-X
average of the Fast Fourier Transformed body linear acceleration standard deviation on X direction
unit: normalized variable, non-dimensional

56. fBodyAccJerk-std()-Y
average of the Fast Fourier Transformed body linear acceleration standard deviation on X direction
unit: normalized variable, non-dimensional

57. fBodyAccJerk-std()-Z
average of the Fast Fourier Transformed body linear acceleration standard deviation on X direction
unit: normalized variable, non-dimensional

58. fBodyAccJerk-meanFreq()-X
average of the mean frequency of the Fast Fourier Transformed body linear acceleration on X direction by weighted average of the frequency components
unit: normalized variable, non-dimensional

59. fBodyAccJerk-meanFreq()-Y
average of the mean frequency of the Fast Fourier Transformed body linear acceleration on Y direction by weighted average of the frequency components
unit: normalized variable, non-dimensional

60. fBodyAccJerk-meanFreq()-Z
average of the mean frequency of the Fast Fourier Transformed body linear acceleration on Z direction by weighted average of the frequency components
unit: normalized variable, non-dimensional

61. fBodyGyro-mean()-X
average of the Fast Fourier Transformed body gyroscope mean on X direction
unit: normalized variable, non-dimensional

62. fBodyGyro-mean()-Y
average of the Fast Fourier Transformed body gyroscope mean on Y direction
unit: normalized variable, non-dimensional

63. fBodyGyro-mean()-Z
average of the Fast Fourier Transformed body gyroscope mean on Z direction
unit: normalized variable, non-dimensional

64. fBodyGyro-std()-X
average of the Fast Fourier Transformed body gyroscope standard deviation on X direction
unit: normalized variable, non-dimensional

65. fBodyGyro-std()-Y
average of the Fast Fourier Transformed body gyroscope standard deviation on X direction
unit: normalized variable, non-dimensional

66. fBodyGyro-std()-Z 
average of the Fast Fourier Transformed body gyroscope standard deviation on X direction
unit: normalized variable, non-dimensional

67. fBodyGyro-meanFreq()-X
average of the mean frequency of the Fast Fourier Transformed body gyroscope on X direction by weighted average of the frequency components
unit: normalized variable, non-dimensional

68. fBodyGyro-meanFreq()-Y
average of the mean frequency of the Fast Fourier Transformed body gyroscope on Y direction by weighted average of the frequency components
unit: normalized variable, non-dimensional

69. fBodyGyro-meanFreq()-Z
average of the mean frequency of the Fast Fourier Transformed body gyroscope on Z direction by weighted average of the frequency components
unit: normalized variable, non-dimensional

70. fBodyAccMag-mean()
average of the Fast Fourier Transformed body acceleration magnitude mean
unit: normalized variable, non-dimensional

71. fBodyAccMag-std()
average of the Fast Fourier Transformed body acceleration magnitude standard deviation
unit: normalized variable, non-dimensional fBodyAccMag-meanFreq()

72. fBodyAccMag-meanFreq()
average of the mean frequency of the Fast Fourier Transformed body acceleration magnitude by weighted average of the frequency components
unit: normalized variable, non-dimensional


73. fBodyBodyAccJerkMag-mean()
average of the Fast Fourier Transformed body linear acceleration magnitude mean
unit: normalized variable, non-dimensional

74. fBodyBodyAccJerkMag-std()
average of the Fast Fourier Transformed body acceleration magnitude standard deviation
unit: normalized variable, non-dimensional

75. fBodyBodyAccJerkMag-meanFreq()
average of the mean frequency of the Fast Fourier Transformed body linear acceleration by weighted average of the frequency components
unit: normalized variable, non-dimensional

76. fBodyBodyGyroMag-mean()
average of the Fast Fourier Transformed body gyroscope magnitude mean
unit: normalized variable, non-dimensional

77. fBodyBodyGyroMag-std() 
average of the Fast Fourier Transformed body gyroscope magnitude standard deviation
unit: normalized variable, non-dimensional

78. fBodyBodyGyroMag-meanFreq()
average of the mean frequency of the Fast Fourier Transformed body gyroscope magnitude by weighted average of the frequency components
unit: normalized variable, non-dimensional

79. fBodyBodyGyroJerkMag-mean()
average of the Fast Fourier Transformed body angular velocity magnitude mean
unit: normalized variable, non-dimensional

80. fBodyBodyGyroJerkMag-std()
average of the Fast Fourier Transformed body angular velocity magnitude standard deviation
unit: normalized variable, non-dimensional

81. fBodyBodyGyroJerkMag-meanFreq()
average of the mean frequency of the Fast Fourier Transformed body gyroscope on X direction by weighted average of the frequency components
unit: normalized variable, non-dimensional

#sources
Please note that the information in this document was obtained from the features_info.txt and other documents included in the "UCI HAR Dataset" package downloaded using the following link: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip, 
For more information about the raw data, please visit the following link:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

