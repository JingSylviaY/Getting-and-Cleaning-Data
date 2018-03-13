#Here are the data for the project: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#You should create one R script called run_analysis.R that does the following.

#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.
#From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


setwd("~/Desktop/Coursera/3. Getting and Cleaning Data/course project/UCI HAR Dataset")
activity_labels<-read.table("activity_labels.txt")

X_test<-read.table("X_test.txt", header=FALSE)[1:6]
y_test<-read.table("y_test.txt", header=FALSE)
subject_test<-read.table("subject_test.txt", header=FALSE)
test<-cbind(subject_test,y_test, X_test)

X_train<-read.table("X_train.txt")[1:6]
y_train<-read.table("y_train.txt", nrows = 7351)
subject_train<-read.table("subject_train.txt", nrows=7351)
train<-cbind(subject_train,y_train, X_train)

allData<-rbind(test, train)
colnames(allData)<-c("subject","activity","Mean-X", "Mean-Y","Mean-Z"
                     ,"Std-X","Std-Y","Std-Z")  
allData$activity<-factor(allData$activity, levels=1:6, labels =activity_labels[,2] )
allData$subject<-as.factor(allData$subject)

tidy_Data<-aggregate(.~subject+activity,data=allData, mean)
write.table(tidy_Data, "./tidyData.txt",row.name=FALSE,quote=FALSE)
