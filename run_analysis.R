## READ FILES
# activity labels (1st column is numeric, 2nd column is corresponding label)
ActivityLabels <- read.table("activity_labels.txt")

# feature labels  (only want the labels that are in the 2nd colum)
temp <- read.table("features.txt")
FeatureLabels <- as.character(temp[,2])

#training data
TrainSubject <- read.table("train/subject_train.txt", col.names=c("SubjectID"))
TrainActivity <- read.table("train/Y_train.txt", col.names=c("Activity"))
TrainFeatures <- read.table("train/X_train.txt", col.names=FeatureLabels)

#test files
TestSubject <- read.table("test/subject_test.txt", col.names=c("SubjectID"))
TestActivity <- read.table("test/Y_test.txt", col.names=c("Activity"))
TestFeatures <- read.table("test/X_test.txt", col.names=FeatureLabels)

# Combine the training data (subject, activity, feature) in to a single data set
TrainData <- cbind(TrainSubject, TrainActivity, TrainFeatures)

# Combine the training data (subject, activity, feature) in to a single data set
TestData <- cbind(TestSubject, TestActivity, TestFeatures)

# Combine the training and test data in to a single dataset
AllData <- rbind(TrainData, TestData)

# Convert the activity column from numerics to labels

# Pick off only the features that are proper means and standard deviations
MeanFeatures <- grep("mean", names(AllData), value=TRUE)
StdFeatures <- grep("std", names(AllData), value=TRUE)
print(MeanFeatures)
print(StdFeatures)
AllData <- AllData[,c("SubjectID", "Activity", MeanFeatures, StdFeatures)]
          

print(dim(AllData))
print(head(AllData))