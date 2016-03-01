**Code Book**

This section describes the variables in the tidy data set.

Subject: This a number from 1 - 30 identifying the subject for whom the measurements apply.

ActivityName: This a character data type describing the activity that the subject was performing when measurements were taken.

Average: This is an average of all the measurements for the subject performing a specific activity.

StandardDeviation: This is an average of the standard deviation of all the measurements for the subject performing a specific activity.

Accelerometer Measurements: The remaining variables are the average of the accelerometer and gyroscope measurements for the subject performing a specific activity. 


**Study Design**

Data for this study was provided by:

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012


** Transformations **

1. The training and test measurement data were merged.
2. An average for each measurement was calculated and added to data set.
3. A standard deviation for each measurement was calculated and added to the data set.
4. A descriptive name for each activity was added.
5. The subject identifier was added for each measurement.
6. A descriptive name for each column was added
7. The data set was aggregated by subject and activity name and averaged for each measurement, average and standard deviation.

