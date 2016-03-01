**Code Book**

This section describes the variables in the tidy data set.

Subject: This a number from 1 - 30 identifying the subject for whom the measurements apply.

ActivityName: This a character data type describing the activity that the subject was performing when measurements were taken.


Accelerometer Measurements (Mean and Standard Deviation): The remaining variables are the accelerometer and gyroscope measurements for the subject performing a specific activity. 

tBodyAcc-mean()-X</br>
tBodyAcc-mean()-Y</br>
tBodyAcc-mean()-Z</br>
tBodyAcc-std()-X</br>
tBodyAcc-std()-Y</br>
tBodyAcc-std()-Z</br>
tGravityAcc-mean()-X</br>
tGravityAcc-mean()-Y</br>
tGravityAcc-mean()-Z</br>
tGravityAcc-std()-X</br>
tGravityAcc-std()-Y</br>
tGravityAcc-std()-Z</br>
tBodyAccJerk-mean()-X</br>
tBodyAccJerk-mean()-Y</br>
tBodyAccJerk-mean()-Z</br>
tBodyAccJerk-std()-X</br>
tBodyAccJerk-std()-Y</br>
tBodyAccJerk-std()-Z</br>
tBodyGyro-mean()-X</br>
tBodyGyro-mean()-Y</br>
tBodyGyro-mean()-Z</br>
tBodyGyro-std()-X</br>
tBodyGyro-std()-Y</br>
tBodyGyro-std()-Z</br>
tBodyGyroJerk-mean()-X</br>
tBodyGyroJerk-mean()-Y</br>
tBodyGyroJerk-mean()-Z</br>
tBodyGyroJerk-std()-X</br>
tBodyGyroJerk-std()-Y</br>
tBodyGyroJerk-std()-Z</br>
tBodyAccMag-mean()</br>
tBodyAccMag-std()</br>
tGravityAccMag-mean()</br>
tGravityAccMag-std()</br>
tBodyAccJerkMag-mean()</br>
tBodyAccJerkMag-std()</br>
tBodyGyroMag-mean()</br>
tBodyGyroMag-std()</br>
tBodyGyroJerkMag-mean()</br>
tBodyGyroJerkMag-std()</br>
fBodyAcc-mean()-X</br>
fBodyAcc-mean()-Y</br>
fBodyAcc-mean()-Z</br>
fBodyAcc-std()-X</br>
fBodyAcc-std()-Y</br>
fBodyAcc-std()-Z</br>
fBodyAcc-meanFreq()-X</br>
fBodyAcc-meanFreq()-Y</br>
fBodyAcc-meanFreq()-Z</br>
fBodyAccJerk-mean()-X</br>
fBodyAccJerk-mean()-Y</br>
fBodyAccJerk-mean()-Z</br>
fBodyAccJerk-std()-X</br>
fBodyAccJerk-std()-Y</br>
fBodyAccJerk-std()-Z</br>
fBodyAccJerk-meanFreq()-X</br>
fBodyAccJerk-meanFreq()-Y</br>
fBodyAccJerk-meanFreq()-Z</br>
fBodyGyro-mean()-X</br>
fBodyGyro-mean()-Y</br>
fBodyGyro-mean()-Z</br>
fBodyGyro-std()-X</br>
fBodyGyro-std()-Y</br>
fBodyGyro-std()-Z</br>
fBodyGyro-meanFreq()-X</br>
fBodyGyro-meanFreq()-Y</br>
fBodyGyro-meanFreq()-Z</br>
fBodyAccMag-mean()</br>
fBodyAccMag-std()</br>
fBodyAccMag-meanFreq()</br>
fBodyBodyAccJerkMag-mean()</br>
fBodyBodyAccJerkMag-std()</br>
fBodyBodyAccJerkMag-meanFreq()</br>
fBodyBodyGyroMag-mean()</br>
fBodyBodyGyroMag-std()</br>
fBodyBodyGyroMag-meanFreq()</br>
fBodyBodyGyroJerkMag-mean()</br>
fBodyBodyGyroJerkMag-std()</br>
fBodyBodyGyroJerkMag-meanFreq()</br>



**Study Design**

Data for this study was provided by:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


**Transformations**

1. The training and test measurement data were merged.
2. A descriptive name for each activity was added.
3. The subject identifier was added for each measurement.
4. A descriptive name for each column was added
5. Only measurement with "-mean" or "-std" in their column names were kept - all other measurements were discarded.
6. The data set was aggregated by subject and activity name and averaged for each measurement.

