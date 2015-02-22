---
title: "README.md"
author: "S O Gervais"
date: "February 21, 2015"
output: html_document
---

Getting and Cleaning Data
Course Project 

***
  
###Purpose  

To develop an R script to demonstrate lessons learned from the Getting and Cleaning Data course. In this project, I have created an R script called run_analysis.R that does the following:

1) Merges the training and the test sets to create one data set.
2) Extracts only the measurements on the mean and standard deviation for each measurement. 
3) Uses descriptive activity names to name the activities in the data set
4) Appropriately labels the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average 
     of each variable for each activity and each subject.

  
###Assumptions

1) training and testing text files are in directories within your current working directory  
2) activity labels and features text files are in your current working directory  
3) library dplyr has been installed  
4) any given row in the data files correspond to the observations of an activity made on the same subject

***

  
### Processing the data

  
####Step 1 - Build datasets from x, y, and subject files

In this step, the script merges the training and the test datasets to create
one data set each of subject (study IDs), y (activity codes), and x
(accelerometer and gyroscope readings) datafiles (Outcome 1 partially complete).

In loading training and test data for x, y and subject, inspection of the
files showed that the data are in text files with no headers and spaces
separating columns ( sep = " ").  Read.Table defaults can be used to load the
data and combine training and test datasets into 1 data frame

Descriptive activity names were used to name the activities in the data set
(Outcome 3).  Activity codes and labels were combined using **left_join** to
build the y dataset. Since we only need the activity name column when we
finish building our tidy dataset, the final y dataset was prepared  selecting
only column 2 with the activity name data.


  
####Step 2 - Label data sets

In this step, appropriate labels for the data set with descriptive variable names were prepared 
from the features data file (Outcome 4). 


  
####Step 3 - Subset x dataframe to include only needed elements in the dataset

In this step, only those columns from the x data were extracted that measured the mean and 
standard deviation for each measurement and directional axis (Outcome 2).

Key to this step was the use of a regular expression to select only those columns matching 
-mean() or -std() patterns:

``` 
    # For x only, select those columns which give mean and standard deviation
    features.mean.std <- grep("-(mean|std)\\(\\)", names(x))
    
    # Subset the desired columns from x
    x.subset <- x[, features.mean.std]

```

  
####Step 4 - Combine column sets into 1 dataframe.  

In this step, the 3 separate, properly subsetted and labeled datasets are combined into 
one complete dataset and stored as a dataframe. Columns are assumed to be matched by 
position (Outcome 1 finalized)


  
####Step 5 - Create a tidy dataset

In this step, the dataframe in step 4 is processed to create a second, independent tidy dataset 
with the mean average of each mean and standard deviation variable for each activity/dimension and 
each subject (Outcome 5).  Data is grouped by subject ID and activity.  

Key to this step was the use of dplyr functions and piping to group, sumarize, and arrange the 
output for the tidy dataset:

```
    # Use piping to build tidy data set based off dataframe in step 4
    tidy.set <- df %>% 
      
      # Group the data by subject ID and activity name
      group_by(subject_id, activity_name) %>% 
        
        # Find the mean of each mean/std column
        summarise_each( funs(mean)) %>%
      
          # Arrange the rows by subject and activity
          arrange(subject_id, activity_name)
      
```

The final output of the script is a tidy dataset written out as the text file "tidy_set_averages.txt".
The file contains 68  variables detailing 180 observations grouped and arranged by subject and activity.

***

  
###Preparation of Codebook and Metadata

*Note:  I use **Stata** in my regular work and like the detail in the codebook creation tool so I went looking 
for a tool that could duplicate the information I typically prepare.  The package listed below is a good 
starting point.*

Codebook output was produced using **describe** function in the **Hmisc** package  
Harrell, F. (2015). R software package:  Harrell Miscellaneous.  
URL: http://biostat.mc.vanderbilt.edu/Hmisc 

Output for each variable includes:

1) Description
2) Data type and units
3) number of observations (n) and the number of missing and unique observations
4a) For string variables, details on the unique values recorded and their frequency. 
4b) For numeric variables, mean values and percentile distribution of the variable as 
well as the 5 lowest and 5 highest reported values.

######*Confession - my regular work got in the way and I ran out of time so I was incomplete in adding my descriptions and variable datatypes and units to each block.*  

