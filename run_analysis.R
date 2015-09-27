library(plyr)
library(dplyr)
library(reshape2)
#### Step 1 ####
# Load Features

features <- read.table("./data/features.txt")
activities <- read.table("./data/activity_labels.txt")

# Load Data from dir: "./data"

train <- read.table("./data/train/X_train.txt")
test <- read.table("./data/test/X_test.txt")
train_activities <- read.table("./data/train/y_train.txt")
test_activities <- read.table("./data/test/y_test.txt")
train_subjects <- read.table("./data/train/subject_train.txt")
test_subjects <- read.table("./data/test/subject_test.txt")

### uncomment below lines to check dim() and head() of data ###
#dim(train); dim(train_labels); dim(train_subjects)
#head(train)
#dim(test); dim(test_labels); dim(test_subjects)
#head(test)

# add column names

names(train) <- features[,2]
names(test) <- features[,2]

# add subjects and activity labels

train<- cbind(train, ActivityLabel = train_activities[,1], Subject = train_subjects[,1])
test<- cbind(test, ActivityLabel = test_activities[,1], Subject = test_subjects[,1])

### uncomment below lines to check dim() and head() of data ###
#dim(train); dim(train_labels); dim(train_subjects)
#head(train)
#dim(test); dim(test_labels); dim(test_subjects)
#head(test)

# Join training and test data

joined <- rbind(train,test)
### uncomment below to check dimensions of new joined data ###
#dim(joined)

#### Step 2 #####
# Extract means and standard deviations, including entires with "mean" or "std"

mstds <- joined[grep("mean|std", features[,2], perl = TRUE)]

### uncomment to check dimesnsions match ###
#dim(joined);length(meansandstds);dim(mstds)

#### Step 3 ####
# Update Activity names in joined and mstds data

# First change the names in activities from factor to characters

activities[,2] <- as.character(activities[,2])

# Update the names in joined

for(i in 1:length(activities[,1])){
    joined[which(joined$ActivityLabel == activities[i,1]),"ActivityLabel"]<-activities[i,2]
}

mstds <- cbind(mstds, ActivityLabel = joined$ActivityLabel, Subject = joined$Subject)
for(i in 1:length(activities[,1])){
    mstds[which(mstds$ActivityLabel == activities[i,1]),"ActivityLabel"]<-activities[i,2]
}

#### Step 4 ####
#Already used the features.txt file to load the column names for train and test data
# that was then used to make joined, which therefore has the same column names.
# Details about the names were given in features_info.txt from the origianl .zip folder
# and I have given the same information in my codebook: "codebook.md"

#The names are all distinct and descriptive, I think they are well formatted and therefore did not change them again.

#### Step 5 ####
# Create a data set with the average of each variable for each activity and each subject

# makes a melted data frame organized by the Activity and Subject
melted = melt(mstds, id = c("ActivityLabel", "Subject"))
melted$value <- as.numeric(melted$value)
# cast the data farme to find the averages we want
cleaned <- dcast(melted, Subject+ActivityLabel ~ variable, mean)

### uncomment to check dimesnsions ###
#dim(melted);dim(cleaned)

# Write data.frame to txt file
write.table(cleaned,"./tidy_data.txt", row.names = FALSE)
