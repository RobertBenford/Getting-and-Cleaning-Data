library(plyr)

#First read in the datasets - traing, test, and subject

xtrain <- read.table("x_train.txt")
ytrain <- read.table("y_train.txt")
subjecttrain <- read.table("subject_train.txt")
xtest <- read.table("x_test.txt")
ytest <- read.table("y_test.txt")
subjecttest <- read.table("subject_test.txt")

# 1 Create x and y and subject datasets through row binding training to test

xdat <- rbind(xtrain, xtest)
ydat <- rbind(ytrain, ytest)
subdat <- rbind(subjecttrain, subjecttest)

## 2 Second step to get only means and stdevs from each measurement taken on volunteers

features <- read.table("features.txt")

x_and_std <- grep("-(mean|std)\\(\\)", features[, 2])

xdat <- xdat[, x_and_std]

names(xdat) <- features[x_and_std, 2]

### 3 Get descriptive activity names to label the activities being measured

activities <- read.table("activity_labels.txt")

ydat[, 1] <- activities[ydat[, 1], 2]

names(ydat) <- "activity"

#### 4 Label dataset with appropriate descriptive names

names(subdat) <- "subject"

tidydata <- cbind(xdat, ydat, subdat)

##### 5 Create Tidy data with averages

averagesdata <- ddply(tidydata, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averagesdata, "averagesdata.txt", row.name=FALSE)
