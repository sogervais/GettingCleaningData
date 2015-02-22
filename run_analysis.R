# Getting and Cleaning Data
# Course Project 
# Stephen Gervais
# February 18, 2015

# ===============================================================================================
# Script to demonstrate lessons learned from this course
#
#   You should create one R script called run_analysis.R that does the following:
#
#   1) Merges the training and the test sets to create one data set.
#   2) Extracts only the measurements on the mean and standard deviation for each measurement. 
#   3) Uses descriptive activity names to name the activities in the data set
#   4) Appropriately labels the data set with descriptive variable names. 
#   5) From the data set in step 4, creates a second, independent tidy data set with the average 
#      of each variable for each activity and each subject.
#
# Assumptions
#   1) training and testing text files are in directories within your current working directory
#   2) activity labels and features text files are in your current working directory
#   3) library dplyr has been installed
#   4) any given row in the data files corresponds to the same set of observations of a specific 
#       activity made on the same subject.  
# ===============================================================================================

# Load libraries
library(dplyr)

# Step 1 - Build datasets from x, y, and subject files
# Merges the training and the test sets to create one data set (Outcome 1)
# Uses descriptive activity names to name the activities in the data set (Outcome 3)
# ===============================================================================================

# Get variable labels
activity.labels <- tbl_df(read.table("./activity_labels.txt"))
features <- tbl_df(read.table("./features.txt"))

# Load training and test data for x, y and subject
#    Data are in text files with no headers, sep = " " - Read.Table defaults OK
# Combine training and test datasets into 1 data frame

x.train <- tbl_df(read.table("./train/X_train.txt"))
x.test <- tbl_df(read.table("./test/X_test.txt"))
x <- bind_rows(x.train, x.test)


y.train <- tbl_df(read.table("./train/y_train.txt"))
y.test <- tbl_df(read.table("./test/y_test.txt"))
# Combine activity codes and labels here using left_join while we're building y - 
# we only need activity name column when we finish so just select column 2
y <- select(left_join( bind_rows(y.train, y.test) , activity.labels, by = "V1"), 2)


subject.train <- tbl_df(read.table("train/subject_train.txt"))
subject.test <- tbl_df(read.table("test/subject_test.txt"))
subject <- bind_rows(subject.train, subject.test)

# Step 2
# Appropriately labels the data set with descriptive variable names. (Outcome 4) 
# ===============================================================================================

names(x) <- as.character(features$V2)
names(y) <- "activity_name"
names(subject) <- "subject_id"

# Step 3 - Subset dataframe to include only needed elements in the dataset
# Extracts only the measurements on the mean and standard deviation for each measurement (Outcome 2) 
# ===============================================================================================

# For x only, select those columns which give mean and standard deviation
features.mean.std <- grep("-(mean|std)\\(\\)", names(x))

# Subset the desired columns from x
x.subset <- x[, features.mean.std]


# Step 4
# Combine column sets into 1 dataframe.  Assumes match by position
# ===============================================================================================
df <- bind_cols(subject, y, x.subset)

# Step 5
# From the data set in step 4, creates a second, independent tidy data set with the average 
#   of each variable for each activity and each subject (Outcome 5). 
# ===============================================================================================

# Use piping to build tidy data set based off dataframe in step 4
tidy.set <- df %>% 
  
  # Group the data by subject ID and activity name
  group_by(subject_id, activity_name) %>% 
    
    # Find the mean of each mean/std column
    summarise_each( funs(mean)) %>%
  
      # Arrange the rows by subject and activity
      arrange(subject_id, activity_name)

# Write output of tidy set to file
write.table(tidy.set, "tidy_set_averages.txt", row.name=FALSE)