R script run_analysis.R creates the tidy data set averages_data.txt:

1.Merges the training and the test sets to create one data set.
2.Extracts only the measurements on the mean and standard deviation for each measurement. 
3.Uses descriptive activity names to name the activities in the data set
4.Appropriately labels the data set with descriptive variable names. 
5.From the data set in step 4, creates a second, independent tidy data set with the average
of each variable for each activity and each subject.

Data inputs are downloaded from Human Activity RecognitionUsing Smartphones Dataset Version 1.0
and unzipped into the working directory where run_analysis.R is run

input files are:
  x_train.txt: training dataset
  y_train.txt: training labels
  x_test.txt: test dataset
  y_test.txt: test labels
  subject_train.txt: each row identifies subject performed activity
  subject_test.txt: each row identifies subject performed activity
  activity_labels.txt: links the class labels with their activity name
  features.txt: lists all the features
  
  Step 1 combines train and test datasets to xdat, ydat, subdat via row binding (rbind)
  Step 2 gets correct names for desired mean and standard deviations from features.txt
          as x_and_std and applied to column names of xdat
  Step 3 gets correct names for activities from acitivity_labels.txt and applied to ydat
  Step 4 lables the data and creates "tidydata" through column binding (cbind) xdat, ydat, subdat
  Step 5 gets only the pertinent data for averages.txt and uses write.table(averagesdata, "averagesdata.txt", row.name=FALSE)
          to create final tidy data for further analysis on this subjects
          
  Pertinent data in averagesdata.text
    Rows = 180 as 30 volunteers and six activites
    Columns = 68 descriptive variables where:
            column 1 = subject (identifies the volunteer and repeats for each activity n=6)
            column 2 = activity (laying, sitting, standing, walking, walking_downstairs, walking_upstairs)
            columns 3 - 68 = means and standard deviations of the measurement taken for each activity
