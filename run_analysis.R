## Read activity labels
filepathactivitylabels <- "data/activity_labels.txt"
activitylabels <- read.table(filepathactivitylabels)
activitylabels$V2 <- as.character(activitylabels$V2)

## Read the features
filepathfeatures <- "data/features.txt"
features <- read.table(filepathfeatures)
features$V2 <- as.character(features$V2)


## Read the train data
filepathtrain <- "data/train/X_train.txt"
traindata <- read.table(filepathtrain)

## Read the training subject data
filepathtrainsubject = "data/train/subject_train.txt"
trainsubjectdata <- read.table(filepathtrainsubject)

## Read the training labels
filepathtrainlabels = "data/train/y_train.txt"
trainlabelsdata <- read.table(filepathtrainlabels)
trainlabeldatanames <- sapply(trainlabelsdata$V1, function(x){activitylabels[x, 2]})

## Calculate the mean of each train data measurement
traindatamean <- rowMeans(traindata)

## Calculate the stddev of each train data measurement
trainstddev <- apply(traindata, 1, sd)

## Combine columns subject, activity, average and stddev into a data frame
summarytraindata <- data.frame(cbind(trainsubjectdata$V1, trainlabeldatanames, traindatamean, trainstddev))

## Add column names to the summary train data
colnames(summarytraindata) <- c("Subject", "ActivityName", "Average", "StandardDeviation")

## Add descriptive column names to the original train data
colnames(traindata) <- sapply(features$V1, function(x){features[x, 2]})

## Combine the summary train data and the orginal train measurements
tidytraindata <- cbind(summarytraindata, traindata)

## Read the test data
filepathtest <- "data/test/X_test.txt"
testdata <- read.table(filepathtest)

## Read the test subject data
filepathtestsubject = "data/test/subject_test.txt"
testsubjectdata <- read.table(filepathtestsubject)

## Read the training labels
filepathtestlabels = "data/test/y_test.txt"
testlabelsdata <- read.table(filepathtestlabels)
testlabeldatanames <- sapply(testlabelsdata$V1, function(x){activitylabels[x, 2]})

## Calculate the mean of each train data measurement
testdatamean <- rowMeans(testdata)

## Calculate the stddev of each train data measurement
teststddev <- apply(testdata, 1, sd)

## Combine columns subject, activity, average and stddev into a data frame
summarytestdata <- data.frame(cbind(testsubjectdata$V1, testlabeldatanames, testdatamean, teststddev))

## Add column names to the summary test data
colnames(summarytestdata) <- c("Subject", "ActivityName", "Average", "StandardDeviation")

## Add descriptive column names to the original test data
colnames(testdata) <- sapply(features$V1, function(x){features[x, 2]})

## Combine the summary test data and the orginal test measurements
tidytestdata <- cbind(summarytestdata, testdata)

## Merge into one data set
mergedtidydataset <- rbind(tidytraindata, tidytestdata)

## Make sure the summary measurements are numeric
mergedtidydataset$Average <- as.numeric(as.character(mergedtidydataset$Average))
mergedtidydataset$StandardDeviation <- as.numeric(as.character(mergedtidydataset$StandardDeviation))

tidydatabysubjectandactivity <- aggregate(. ~ Subject + ActivityName, data = mergedtidydataset, FUN=mean)

write.table(tidydatabysubjectandactivity, file="tidydata.txt", row.names = FALSE)