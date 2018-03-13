# Getting and Cleaning Data Course Project
---
in this project, you can find: 
'README.txt'
'codebook'that modifies and updates the available codebooks with the data to indicate all the variables and summaries  calculated, along with units, and any other relevant information.
'run.analysis.R'
'tidy_Data.txt'

the R scrip, the analysis of the code in run.analysis.R:
1. download the dataset into your computer, unzip the file
2. change your working directory to the forlder containing all your data
3. upload the x_trian, y_trian, x_test, y_test and activity_labels dataset into R
4. Extracts only the measurements on the mean and standard deviation for each measurement.from the features_txt file, we can see the which columns we need to read( mean and std records only)
5.Loads the activity and subject data for each dataset, and merges those columns with the dataset
6. Uses descriptive activity names to name the activities in the data set
7. Merge the two datasets
8. Appropriately labels the data set with descriptive variable names
9.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.---output is the tidy_Data.txt file.






