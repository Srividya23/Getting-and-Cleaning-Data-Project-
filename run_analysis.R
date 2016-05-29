# Import Required Libraries
library(plyr)

# Getting the Training Data
xtrain <- read.table("./UCI HAR Dataset/train/X_train.txt") 
ytrain <- read.table("./UCI HAR Dataset/train/y_train.txt")
train_subject <- read.table("./UCI HAR Dataset/train/subject_train.txt")
train <- cbind(train_subject,xtrain,ytrain)

# Getting the Testing Data
xtest <- read.table("./UCI HAR Dataset/test/X_test.txt") 
ytest <- read.table("./UCI HAR Dataset/test/y_test.txt")
test_subject <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test <- cbind(test_subject,xtest,ytest)

# Combining Training and Testing Data
CombData <- rbind(train,test)

# Renaming the columns of the data set
features <- read.table("./UCI HAR Dataset/features.txt")
FeatureNames <- as.character(features$V2)
names(CombData)[1] <- "Subjects"
names(CombData)[2:562] <- FeatureNames
names(CombData)[563] <- "labels"

# Extracting Columns with only mean and Std
filternames <- grep("mean\\()|std|Subjects|labels",names(CombData))
CombData <- CombData[,filternames]

# Giving descriptive activity names

factors <- as.factor(CombData$labels)
CombData$labels <- revalue(factors, c("1"="walking","2" = "walking_upstairs","3" = "walking_downstairs",
                                       "4" = "sitting", "5" = "standing","6" = "laying"))

# Giving descriptive variable names

ColumnNames <- names(CombData)
# Changing Column Names for Time Domain
ColumnNames <- gsub("tBodyAcc","time_body_acceleration",ColumnNames)
ColumnNames <- gsub("tGravityAcc","time_gravity_acceleration",ColumnNames)
ColumnNames <- gsub("tBodyAccJerk","time_body_acceleration_Jerk",ColumnNames)
ColumnNames <- gsub("tBodyGyro","time_body_AngularVelocity",ColumnNames)
ColumnNames <- gsub("tBodyGyroJerk","time_body_AngularVelocity_Jerk",ColumnNames)
ColumnNames <- gsub("tBodyAccMag","time_body_acceleration_Magnitude",ColumnNames)
ColumnNames <- gsub("tGravityAccMag","time_gravity_acceleration_Magnitude",ColumnNames)
ColumnNames <- gsub("tBodyAccJerkMag","time_body_acceleration_Jerk_Magnitude",ColumnNames)
ColumnNames <- gsub("tBodyGyroMag","time_body_AngularVelocity_Magnitude",ColumnNames)
ColumnNames <- gsub("tBodyGyroJerkMag","time_body_AngularVelocity_Jerk_Magnitude",ColumnNames)

# Changing Column Names for Frequency Domain
ColumnNames <- gsub("fBodyAcc","freq_body_acceleration",ColumnNames)
ColumnNames <- gsub("fBodyAccJerk","freq_body_acceleration_Jerk",ColumnNames)
ColumnNames <- gsub("fBodyGyro","freq_body_AngularVelocity",ColumnNames)
ColumnNames <- gsub("fBodyGyroJerk","freq_body_AngularVelocity_Jerk",ColumnNames)
ColumnNames <- gsub("fBodyAccMag","freq_body_acceleration_Magnitude",ColumnNames)
ColumnNames <- gsub("fBodyBodyAccJerkMag","freq_body_acceleration_Jerk_Magnitude",ColumnNames)
ColumnNames <- gsub("fBodyBodyGyroMag","freq_body_AngularVelocity_Magnitude",ColumnNames)
ColumnNames <- gsub("fBodyBodyGyroJerkMag","freq_body_AngularVelocity_Jerk_Magnitude",ColumnNames)

# Renaming Columns
names(CombData) <- ColumnNames

# New data set with the average of each variable for each activity and each subject.

  # Converting Subjects to factors
  Subjects_factors <- as.factor(CombData$Subjects)
  CombData$Subjects <- Subjects_factors
  
  # New Tidy Independent Data Set
  TidyData <-  aggregate(. ~Subjects + labels, CombData, mean)
  
# Writing as Text File
write.table(TidyData, "./TidyData.txt",sep = '\t',row.names = FALSE)
  
  

