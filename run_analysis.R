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

## Combine columns subject, activity, average and stddev into a data frame
summarytraindata <- data.frame(cbind(trainsubjectdata$V1, trainlabeldatanames))

## Add column names to the summary train data
colnames(summarytraindata) <- c("Subject", "ActivityName")

## Add descriptive column names to the original train data
colnames(traindata) <- sapply(features$V1, function(x){features[x, 2]})

## Filter on mean & stddev columns
mlabels <- features[,2]
mfilteredlabels <- mlabels[grep("-mean|-std", mlabels)]
filteredtraindata <- traindata[, which(names(traindata) %in% mfilteredlabels)]

## Combine the summary train data and the orginal train measurements
tidytraindata <- cbind(summarytraindata, filteredtraindata)





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


## Combine columns subject, activity, average and stddev into a data frame
summarytestdata <- data.frame(cbind(testsubjectdata$V1, testlabeldatanames))

## Add column names to the summary test data
colnames(summarytestdata) <- c("Subject", "ActivityName")

## Add descriptive column names to the original test data
colnames(testdata) <- sapply(features$V1, function(x){features[x, 2]})

## Filter on mean & stddev columns
filteredtestdata <- testdata[, which(names(testdata) %in% mfilteredlabels)]

## Combine the summary test data and the orginal test measurements
tidytestdata <- cbind(summarytestdata, filteredtestdata)

## Merge into one data set
mergedtidydataset <- rbind(tidytraindata, tidytestdata)

tidydatabysubjectandactivity <- aggregate(. ~ Subject + ActivityName, data = mergedtidydataset, FUN=mean)

write.table(tidydatabysubjectandactivity, file="tidydata.txt", row.names = FALSE)