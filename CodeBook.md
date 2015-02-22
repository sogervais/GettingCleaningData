---
title: "Codebook"
author: "S O Gervais"
date: "February 20, 2015"
output: html_document
---


#tidy.set 

 68  Variables      180  Observations by subject and activity
 
Codebook output produced using **describe** function in the **Hmisc** package  
Harrell, F. (2015). R software package:  Harrell Miscellaneous.  
URL: http://biostat.mc.vanderbilt.edu/Hmisc  

***
  
####Data Source  

Human Activity Recognition Using Smartphones Data Set   
URL:  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones# 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

####Description 
*(From the authors)*  The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.   

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.  

####Processing
Dataset was processed using an R language programming script that did the following:

1) Merged the training and the test sets to create one data set.
2) Extracted only the measurements on the mean and standard deviation for each measurement. 
3) Used descriptive activity names to name the activities in the data set
4) Appropriately labeled the data set with descriptive variable names. 
5) From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

For each subject and activity in the tidy dataset (tidy.set), mean values of the reported mean and standard deviation for each 3-axial linear acceleration and 3-axial angular velocity measure are reported.  Final output is in the table *tidy_set_averages.txt*

***

##Variables

####subject_id 
    Description:  Subject ID code assigned to study participants who performed the activity.
    
    Data Type:  Integer
    Units:  NONE
    
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0      30       1    15.5     2.0     3.9     8.0    15.5    23.0    27.1    29.0 
    
    lowest :  1  2  3  4  5
    highest: 26 27 28 29 30   


####activity_name  
    Description:  Name of activity type being performed when smartphone data was captured.

    Data Type:  String (Factor)
    Units: NONE
    
      n missing  unique 
    180       0       6 

    Description (N, %)
    ------------------
    LAYING (30, 17%), 
    SITTING (30, 17%), 
    STANDING (30, 17%), 
    WALKING (30, 17%) 
    WALKING_DOWNSTAIRS (30, 17%), 
    WALKING_UPSTAIRS (30, 17%)  


####tBodyAcc-mean()-X   
    Description:  Mean of the mean body acceleration signal observations obtained by subtracting the gravity from 
    the total acceleration in the x-axis. 

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
    
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1  0.2743  0.2499  0.2582  0.2712  0.2770  0.2800  0.2887  0.2934 

    lowest : 0.2216 0.2333 0.2395 0.2421 0.2472
    highest: 0.2956 0.2959 0.2961 0.2975 0.3015 
  
####tBodyAcc-mean()-Y   
    Description:  Mean of the mean body acceleration signal observations obtained by subtracting the gravity from 
    the total acceleration in the y-axis. 

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
        n   missing    unique      Info      Mean       .05       .10       .25       .50       .75     
      180         0       180         1  -0.01788 -0.028267 -0.026875 -0.020022 -0.017262 -0.014936 
       
          .90       .95 
    -0.011234 -0.008478 

    lowest : -0.040514 -0.032527 -0.032411 -0.032384 -0.031980
    highest: -0.006726 -0.005877 -0.005630 -0.003503 -0.001308 
  
####tBodyAcc-mean()-Z  
    Description:  Mean of the mean body acceleration signal observations obtained by subtracting the gravity from 
    the total acceleration in the z-axis. 

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.1092 -0.12523 -0.12131 -0.11207 -0.10819 -0.10443 -0.09975 -0.09723 

    lowest : -0.15251 -0.15105 -0.14377 -0.13370 -0.13312
    highest: -0.09103 -0.08924 -0.08914 -0.08683 -0.07538 
  
####tBodyAcc-std()-X   
    Description:  Mean of the standard deviation of body acceleration signal observations obtained by subtracting 
    the gravity from the total acceleration in the x-axis. 

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.5577 -0.99190 -0.98896 -0.97987 -0.75256 -0.19838  0.04834  0.18870 

    lowest : -0.9961 -0.9958 -0.9950 -0.9944 -0.9943
    highest:  0.2957  0.3486  0.3837  0.4065  0.6269 
  
####tBodyAcc-std()-Y  
    Description:  Mean of the standard deviation of body acceleration signal observations obtained by subtracting 
    the gravity from the total acceleration in the y-axis. 

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.4605 -0.97320 -0.96331 -0.94205 -0.50897 -0.03077  0.16543  0.30163 

    lowest : -0.9902 -0.9862 -0.9837 -0.9832 -0.9831
    highest:  0.3789  0.3808  0.4898  0.5148  0.6169 
  
####tBodyAcc-std()-Z  
    Description:  Mean of the standard deviation of body acceleration signal observations obtained by subtracting 
    the gravity from the total acceleration in the z-axis. 

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.5756 -0.97768 -0.96785 -0.94981 -0.65176 -0.23064 -0.07367  0.05427 

    lowest : -0.9877 -0.9873 -0.9866 -0.9864 -0.9847
    highest:  0.1596  0.1642  0.2299  0.4516  0.6090 
  
####tGravityAcc-mean()-X  
    Description:  Mean of the mean acceleration signal from the smartphone accelerometer x-axis.  

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1  0.6975 -0.4726 -0.3480  0.8376  0.9208  0.9425  0.9581  0.9652 

    lowest : -0.6800 -0.6213 -0.5803 -0.5304 -0.5098
    highest:  0.9669  0.9686  0.9691  0.9726  0.9745 
  
####tGravityAcc-mean()-Y 
    Description:  Mean of the mean acceleration signal from the smartphone accelerometer y-axis.  

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1 -0.01621 -0.35671 -0.32299 -0.23319 -0.12782  0.08773  0.63488  0.80303 

    lowest : -0.4799 -0.4323 -0.4162 -0.3871 -0.3829
    highest:  0.8992  0.9152  0.9430  0.9549  0.9566 
  
####tGravityAcc-mean()-Z  
    Description:  Mean of the mean acceleration signal from the smartphone accelerometer z-axis.  

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  0.07413 -0.29482 -0.20865 -0.11726  0.02384  0.14946  0.53276  0.71997 

    lowest : -0.4951 -0.4225 -0.4036 -0.3926 -0.3791
    highest:  0.8454  0.8939  0.9075  0.9188  0.9579 
  
####tGravityAcc-std()-X  
    Description:  Mean of the standard deviation of the acceleration signal from the smartphone accelerometer 
    x-axis.  

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.9638 -0.9928 -0.9892 -0.9825 -0.9695 -0.9509 -0.9343 -0.9211 

    lowest : -0.9968 -0.9964 -0.9945 -0.9943 -0.9940
    highest: -0.8997 -0.8968 -0.8877 -0.8621 -0.8296 
  
####tGravityAcc-std()-Y  
    Description:  Mean of the standard deviation of the acceleration signal from the smartphone accelerometer 
    y-axis. 

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.9524 -0.9861 -0.9812 -0.9711 -0.9590 -0.9370 -0.9186 -0.9104 

    lowest : -0.9942 -0.9941 -0.9937 -0.9935 -0.9908
    highest: -0.9039 -0.9013 -0.9010 -0.9005 -0.6436 
  
####tGravityAcc-std()-Z   
    Description:  Mean of the standard deviation of the acceleration signal from the smartphone accelerometer 
    z-axis. 

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.9364 -0.9833 -0.9762 -0.9605 -0.9450 -0.9180 -0.8941 -0.8761 

    lowest : -0.9910 -0.9894 -0.9891 -0.9888 -0.9858
    highest: -0.8624 -0.8588 -0.8524 -0.8369 -0.6102 
  
####tBodyAccJerk-mean()-X  
    Description:  Mean of the mean body acceleration jerk signal observations obtained by subtracting the 
    gravity from the total acceleration in the x-axis.

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 0.07947 0.06275 0.06948 0.07396 0.07640 0.08330 0.09692 0.10370 

    lowest : 0.04269 0.04286 0.04576 0.05416 0.05610
    highest: 0.11066 0.11147 0.11825 0.11894 0.13019 
  
####tBodyAccJerk-mean()-Y  
    Description:  Mean of the mean body acceleration jerk signal observations obtained by subtracting the 
    gravity from the total acceleration in the y-axis.

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
         n    missing     unique       Info       Mean        .05        .10        .25        .50        
       180          0        180          1   0.007565 -0.0163276 -0.0098247  0.0004664  0.0094698
          .75        .90        .95 
    0.0134008  0.0227168  0.0284955 

    lowest : -0.03869 -0.03802 -0.02140 -0.02106 -0.02069
    highest:  0.03671  0.03750  0.03972  0.03999  0.05682 
  
####tBodyAccJerk-mean()-Z  
    Description:  Mean of the mean body acceleration jerk signal observations obtained by subtracting the 
    gravity from the total acceleration in the z-axis.

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
        n   missing    unique      Info      Mean       .05       .10       .25       .50       .75       
      180         0       180         1 -0.004953 -0.029383 -0.021055 -0.010601 -0.003861  0.001958  
         .90      .95 
    0.007939 0.015935 

    lowest : -0.06746 -0.05134 -0.04556 -0.03944 -0.03601
    highest:  0.02082  0.02134  0.02438  0.03167  0.03805 
  
####tBodyAccJerk-std()-X   
    Description:  Mean of the standard deviation of the body acceleration jerk signal observations obtained by 
    subtracting the gravity from the total acceleration in the x-axis.

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90  
     180        0      180        1  -0.5949 -0.99201 -0.98921 -0.98318 -0.81036 -0.22328 -0.01191  
        0.95
     0.03843 

    lowest : -0.9946 -0.9943 -0.9937 -0.9935 -0.9928
    highest:  0.1653  0.1989  0.2233  0.2501  0.5443 
  
####tBodyAccJerk-std()-Y   
    Description:  Mean of the standard deviation of the body acceleration jerk signal observations obtained by 
    subtracting the gravity from the total acceleration in the y-axis.

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
        n   missing    unique      Info      Mean       .05       .10       .25       .50       .75       .90 
      180         0       180         1   -0.5654 -0.985101 -0.982450 -0.972399 -0.775640 -0.148331  0.008861 
          .95 
    0.083222 

    lowest : -0.9895 -0.9886 -0.9886 -0.9872 -0.9867
    highest:  0.2443  0.2765  0.2881  0.2897  0.3553 
  
####tBodyAccJerk-std()-Z  
    Description:  Mean of the standard deviation of the body acceleration jerk signal observations obtained by 
    subtracting the gravity from the total acceleration in the z-axis.

    Data Type:  Double
    Units:  Standard Gravity Units 'g'
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1  -0.736 -0.9900 -0.9882 -0.9827 -0.8837 -0.5121 -0.3583 -0.3027 

    lowest : -0.99329 -0.99225 -0.99122 -0.99066 -0.99059
    highest: -0.13363 -0.02931 -0.02001 -0.01351  0.03102 
  
####tBodyGyro-mean()-X  
    Description:  Mean of the mean the angular velocity vector observations measured by the gyroscope for 
    each window sample in the x-axis.

    Data Type:  Double  
    Units: Radians/Second
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1 -0.03244 -0.12654 -0.10546 -0.04712 -0.02871 -0.01676  0.02504  0.07186 

    lowest : -0.20578 -0.16397 -0.15983 -0.14110 -0.13878
    highest:  0.09033  0.09320  0.09579  0.13498  0.19270 
  
####tBodyGyro-mean()-Y  
    Description:  Mean of the mean the angular velocity vector observations measured by the gyroscope for 
    each window sample in the y-axis.

    Data Type:  Double
    Units: Radians/Second
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1 -0.07426 -0.13993 -0.11159 -0.08955 -0.07318 -0.06113 -0.03440 -0.01348 

    lowest : -0.204205 -0.181458 -0.174651 -0.166170 -0.158903
    highest:  0.007106  0.013902  0.016215  0.021225  0.027471 
  
####tBodyGyro-mean()-Z  
    Description:  Mean of the mean the angular velocity vector observations measured by the gyroscope for 
    each window sample in the z-axis.

    Data Type:  Double  
    Units: Radians/Second
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 0.08744 0.02467 0.05738 0.07475 0.08512 0.10177 0.13868 0.14871 

    lowest : -0.072455 -0.044138 -0.032556 -0.007793 -0.005468
    highest:  0.155920  0.159894  0.163963  0.169720  0.179102 
  
####tBodyGyro-std()-X  
    Description:  Mean of the standard deviation of the angular velocity vector observations measured by 
    the gyroscope for each window sample in the x-axis.

    Data Type:  Double  
    Units: Radians/Second
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.6916 -0.9888 -0.9860 -0.9735 -0.7890 -0.4414 -0.3206 -0.2657 

    lowest : -0.99428 -0.99287 -0.99196 -0.99103 -0.99033highest: -0.20494 -0.19921 -0.19830 -0.02644  0.26766 
  
####tBodyGyro-std()-Y  
    Description:  Mean of the standard deviation of the angular velocity vector observations measured by 
    the gyroscope for each window sample in the y-axis.

    Data Type:  Double
    Units: Radians/Second
  
        n   missing    unique      Info      Mean       .05       .10       .25       .50       .75       .90 
      180         0       180         1   -0.6533 -0.984292 -0.980495 -0.962933 -0.801684 -0.419584 -0.144750 
          .95 
    0.006918 

    lowest : -0.99421 -0.99275 -0.99036 -0.98833 -0.98773
    highest:  0.05699  0.08583  0.21383  0.25946  0.47652 
  
####tBodyGyro-std()-Z   
    Description:  Mean of the standard deviation of the angular velocity vector observations measured by 
    the gyroscope for each window sample in the z-axis.

    Data Type:  Double
    Units: Radians/Second
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.6164 -0.98128 -0.97490 -0.96095 -0.80100 -0.31061 -0.15713 -0.07344 

    lowest : -0.9855 -0.9851 -0.9848 -0.9839 -0.9834
    highest:  0.1597  0.1841  0.3375  0.3562  0.5649 
  
####tBodyGyroJerk-mean()-X  
    Description:  Mean of the mean the angular velocity vector jerk observations measured by the gyroscope 
    for each window sample in the x-axis.

    Data Type:  Double
    Units: Radians/Second
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1 -0.09606 -0.14100 -0.12280 -0.10322 -0.09868 -0.09110 -0.06470 -0.05142 

    lowest : -0.15721 -0.15545 -0.14845 -0.14839 -0.14680  
    highest: -0.03374 -0.02665 -0.02647 -0.02565 -0.02209 
  
####tBodyGyroJerk-mean()-Y  
    Description:  Mean of the mean the angular velocity vector jerk observations measured by the gyroscope 
    for each window sample in the y-axis.

    Data Type:  Double
    Units: Radians/Second
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1 -0.04269 -0.06096 -0.05282 -0.04552 -0.04112 -0.03842 -0.03463 -0.03025 

    lowest : -0.07681 -0.07406 -0.07360 -0.07198 -0.07083  
    highest: -0.02755 -0.02077 -0.01898 -0.01411 -0.01320 
  
####tBodyGyroJerk-mean()-Z  
    Description:  Mean of the mean the angular velocity vector jerk observations measured by the gyroscope 
    for each window sample in the z-axis.

    Data Type:  Double
    Units: Radians/Second
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.0548 -0.07399 -0.07033 -0.06172 -0.05343 -0.04898 -0.04116 -0.03594 

    lowest : -0.092500 -0.090300 -0.086790 -0.078947 -0.078844  
    highest: -0.027046 -0.023633 -0.022348 -0.013724 -0.006941 
  
####tBodyGyroJerk-std()-X  
    Description:  Mean of the standard deviation of the angular velocity vector jerk observations measured 
    by the gyroscope for each window sample in the x-axis.

    Data Type:  Double
    Units: Radians/Second
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.7036 -0.9933 -0.9914 -0.9800 -0.8396 -0.4629 -0.2676 -0.2166 

    lowest : -0.99654 -0.99610 -0.99588 -0.99526 -0.99417  
    highest: -0.17084 -0.16394  0.03934  0.08012  0.17915 
  
####tBodyGyroJerk-std()-Y 
    Description:  Mean of the standard deviation of the angular velocity vector jerk observations measured 
    by the gyroscope for each window sample in the y-axis.

    Data Type:  Double
    Units: Radians/Second
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.7636 -0.9930 -0.9909 -0.9832 -0.8942 -0.5861 -0.4238 -0.2831 

    lowest : -0.99708 -0.99557 -0.99553 -0.99532 -0.99514  
    highest: -0.12755 -0.07045 -0.01463  0.14665  0.29595 
  
####tBodyGyroJerk-std()-Z  
    Description:  Mean of the standard deviation of the angular velocity vector jerk observations measured 
    by the gyroscope for each window sample in the z-axis.

    Data Type:  Double
    Units: Radians/Second
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.7096 -0.9926 -0.9903 -0.9848 -0.8610 -0.4741 -0.3239 -0.2123 

    lowest : -0.995381 -0.994909 -0.994465 -0.993841 -0.993760  
    highest: -0.034422  0.003079  0.091386  0.116646  0.193206 
  
####tBodyAccMag-mean() 
    Description:  Mean of the mean body acceleration observations obtained by subtracting the gravity from 
    the total acceleration in the x-axis.

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.4973 -0.9781 -0.9726 -0.9573 -0.4829 -0.0919  0.1150  0.1920 

    lowest : -0.9865 -0.9865 -0.9849 -0.9847 -0.9843  
    highest:  0.2508  0.3204  0.3310  0.3338  0.6446 
  
####tBodyAccMag-std() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.5439 -0.9729 -0.9652 -0.9430 -0.6074 -0.2090  0.1194  0.2059 

    lowest : -0.9865 -0.9819 -0.9817 -0.9816 -0.9816  
    highest:  0.2651  0.3532  0.3736  0.4135  0.4284 
  
####tGravityAccMag-mean() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.4973 -0.9781 -0.9726 -0.9573 -0.4829 -0.0919  0.1150  0.1920 

    lowest : -0.9865 -0.9865 -0.9849 -0.9847 -0.9843  
    highest:  0.2508  0.3204  0.3310  0.3338  0.6446 
  
####tGravityAccMag-std() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.5439 -0.9729 -0.9652 -0.9430 -0.6074 -0.2090  0.1194  0.2059 

    lowest : -0.9865 -0.9819 -0.9817 -0.9816 -0.9816  
    highest:  0.2651  0.3532  0.3736  0.4135  0.4284 
  
####tBodyAccJerkMag-mean() 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.6079 -0.98956 -0.98782 -0.98074 -0.81678 -0.24561 -0.08853 -0.01680 

    lowest : -0.9928 -0.9927 -0.9924 -0.9917 -0.9909  
    highest:  0.1038  0.1095  0.1130  0.2626  0.4345 
  
####tBodyAccJerkMag-std() 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.5842 -0.98922 -0.98654 -0.97655 -0.80138 -0.21726 -0.02524  0.09602 

    lowest : -0.9946 -0.9931 -0.9914 -0.9912 -0.9905  
    highest:  0.2095  0.2296  0.2534  0.2921  0.4506 
  
####tBodyGyroMag-mean() 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.5652 -0.96868 -0.96305 -0.94613 -0.65508 -0.21589 -0.06758  0.04386 

    lowest : -0.9807 -0.9807 -0.9800 -0.9782 -0.9776  
    highest:  0.1000  0.1663  0.1664  0.3658  0.4180 
  
####tBodyGyroMag-std() 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.6304 -0.97159 -0.96396 -0.94763 -0.74204 -0.36021 -0.20125 -0.06552 

    lowest : -0.98137 -0.98056 -0.97869 -0.97768 -0.97707  
    highest: -0.02185  0.05400  0.16335  0.23782  0.29998 
  
####tBodyGyroJerkMag-mean() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.7364 -0.9937 -0.9922 -0.9852 -0.8648 -0.5119 -0.3690 -0.2944 

    lowest : -0.99732 -0.99633 -0.99539 -0.99497 -0.99487  
    highest: -0.12619 -0.08294 -0.04631  0.01153  0.08758 
  
####tBodyGyroJerkMag-std() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1  -0.755 -0.9922 -0.9903 -0.9805 -0.8809 -0.5767 -0.4368 -0.2755 

    lowest : -0.99767 -0.99491 -0.99487 -0.99473 -0.99445  
    highest: -0.11123 -0.09534 -0.04390  0.05949  0.25017 
  
####fBodyAcc-mean()-X 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.5758 -0.99063 -0.98827 -0.97869 -0.76909 -0.21744  0.02467  0.10464 

    lowest : -0.9952 -0.9950 -0.9940 -0.9938 -0.9931  
    highest:  0.2054  0.2157  0.2353  0.3283  0.5370 
  
####fBodyAcc-mean()-Y 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.4887 -0.97429 -0.96813 -0.95361 -0.59498 -0.06341  0.11371  0.22765 

    lowest : -0.9890 -0.9849 -0.9837 -0.9829 -0.9821  
    highest:  0.3715  0.3884  0.4035  0.4945  0.5242 
  
####fBodyAcc-mean()-Z 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.6297 -0.98305 -0.97492 -0.96195 -0.72360 -0.31834 -0.17701 -0.07283 

    lowest : -0.9895 -0.9886 -0.9877 -0.9874 -0.9853  
    highest:  0.1107  0.1596  0.1917  0.2805  0.2807 
  
####fBodyAcc-std()-X 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.5522 -0.9924 -0.9892 -0.9820 -0.7470 -0.1966  0.0508  0.2509 

    lowest : -0.9966 -0.9960 -0.9956 -0.9949 -0.9947  
    highest:  0.3366  0.4029  0.4034  0.4663  0.6585 
  
####fBodyAcc-std()-Y 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.4815 -0.97363 -0.96414 -0.94042 -0.51338 -0.07913  0.11519  0.23447 

    lowest : -0.9907 -0.9867 -0.9846 -0.9843 -0.9833  
    highest:  0.3248  0.3561  0.4279  0.4384  0.5602 
  
####fBodyAcc-std()-Z 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.5824 -0.9758 -0.9659 -0.9459 -0.6441 -0.2655 -0.0944  0.0864 

    lowest : -0.9872 -0.9866 -0.9864 -0.9860 -0.9849  
    highest:  0.1333  0.1338  0.2031  0.4276  0.6871 
  
####fBodyAccJerk-mean()-X 

    Data Type:  Double
  
        n   missing    unique      Info      Mean       .05       .10       .25       .50       .75       .90 
      180         0       180         1   -0.6139 -0.992031 -0.989238 -0.982838 -0.812641 -0.281954 -0.038246 
          .95 
    -0.004982 

    lowest : -0.9946 -0.9945 -0.9937 -0.9934 -0.9927  
    highest:  0.1381  0.1814  0.2015  0.2148  0.4743 
  
####fBodyAccJerk-mean()-Y 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.5882 -0.98524 -0.98217 -0.97254 -0.78166 -0.19631 -0.05551  0.03334 

    lowest : -0.9894 -0.9883 -0.9882 -0.9871 -0.9863  
    highest:  0.1600  0.1648  0.2058  0.2206  0.2767 
  
####fBodyAccJerk-mean()-Z 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.7144 -0.9881 -0.9861 -0.9796 -0.8707 -0.4697 -0.2962 -0.2419 

    lowest : -0.99202 -0.99075 -0.98956 -0.98912 -0.98883  
    highest: -0.05720 -0.02488  0.05861  0.05959  0.15778 
  
####fBodyAccJerk-std()-X 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.6121 -0.99255 -0.99005 -0.98472 -0.82539 -0.24753 -0.07147  0.01913 

    lowest : -0.99507 -0.99461 -0.99422 -0.99412 -0.99368  
    highest:  0.09084  0.10806  0.15691  0.17266  0.47680 
  
####fBodyAccJerk-std()-Y 

    Data Type:  Double
  
        n   missing    unique      Info      Mean       .05       .10       .25       .50       .75       .90 
      180         0       180         1   -0.5707 -0.986121 -0.984074 -0.973699 -0.785152 -0.168540 -0.007067 
          .95 
    0.095277 

    lowest : -0.9905 -0.9900 -0.9899 -0.9882 -0.9882  
    highest:  0.2739  0.2931  0.3159  0.3412  0.3498 
  
####fBodyAccJerk-std()-Z 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.7565 -0.9902 -0.9887 -0.9837 -0.8951 -0.5438 -0.4013 -0.3425 

    lowest : -0.993108 -0.992350 -0.991450 -0.991316 -0.990818  
    highest: -0.190752 -0.098520 -0.098393 -0.084667 -0.006236 
  
####fBodyGyro-mean()-X 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.6367 -0.9870 -0.9834 -0.9697 -0.7300 -0.3387 -0.1954 -0.1254 

    lowest : -0.99312 -0.99244 -0.99014 -0.98996 -0.98841  
    highest: -0.06296 -0.03000  0.06337  0.22814  0.47496 
  
####fBodyGyro-mean()-Y 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.6767 -0.9862 -0.9831 -0.9700 -0.8141 -0.4458 -0.2157 -0.1028 

    lowest : -0.9940 -0.9937 -0.9916 -0.9903 -0.9890  
    highest:  0.1161  0.1187  0.1471  0.1956  0.3288 
  
####fBodyGyro-mean()-Z 

    Data Type:  Double
  
        n   missing    unique      Info      Mean       .05       .10       .25       .50       .75       .90 
      180         0       180         1   -0.6044 -0.980874 -0.975842 -0.962424 -0.790931 -0.263481 -0.130501 
          .95 
    -0.008592 

    lowest : -0.9860 -0.9860 -0.9850 -0.9842 -0.9837  
    highest:  0.1660  0.1967  0.2107  0.2570  0.4924 
  
####fBodyGyro-std()-X 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1  -0.711 -0.9896 -0.9869 -0.9750 -0.8086 -0.4813 -0.3570 -0.3083 

    lowest : -0.9947 -0.9930 -0.9926 -0.9913 -0.9910  
    highest: -0.2784 -0.2534 -0.2343 -0.1084  0.1966 
  
####fBodyGyro-std()-Y 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.6454 -0.9835 -0.9789 -0.9602 -0.7964 -0.4154 -0.1482  0.0746 

    lowest : -0.9944 -0.9922 -0.9896 -0.9873 -0.9871  
    highest:  0.1515  0.1717  0.2343  0.2866  0.6462 
  
####fBodyGyro-std()-Z 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.6577 -0.9828 -0.9769 -0.9643 -0.8224 -0.3916 -0.2368 -0.1648 

    lowest : -0.98673 -0.98648 -0.98573 -0.98532 -0.98471  
    highest:  0.01831  0.09548  0.18279  0.26320  0.52245 
  
####fBodyAccMag-mean() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.5365 -0.9752 -0.9724 -0.9560 -0.6703 -0.1622  0.1142  0.2202 

    lowest : -0.9868 -0.9868 -0.9854 -0.9848 -0.9845  
    highest:  0.3312  0.3648  0.3960  0.4719  0.5866 
  
####fBodyAccMag-std() 

    Data Type:  Double
  
         n    missing     unique       Info       Mean        .05        .10        .25        .50        .75 
       180          0        180          1     -0.621 -0.9751406 -0.9676112 -0.9451633 -0.6512629 -0.3654056 
           .90        .95 
    -0.0737739  0.0005175 

    lowest : -0.98765 -0.98231 -0.98225 -0.98223 -0.98160  
    highest:  0.08286  0.08887  0.14462  0.15312  0.17868 
  
####fBodyBodyAccJerkMag-mean() 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.5756 -0.98879 -0.98590 -0.97697 -0.79405 -0.18723  0.01115  0.07877 

    lowest : -0.9940 -0.9925 -0.9914 -0.9904 -0.9902  
    highest:  0.2222  0.2438  0.3315  0.3350  0.5384 
  
####fBodyBodyAccJerkMag-std() 

    Data Type:  Double
  
       n  missing   unique     Info     Mean      .05      .10      .25      .50      .75      .90      .95 
     180        0      180        1  -0.5992 -0.98858 -0.98630 -0.97520 -0.81262 -0.26682 -0.02227  0.08048 

    lowest : -0.9944 -0.9925 -0.9910 -0.9903 -0.9903
    highest:  0.1583  0.1943  0.2245  0.2275  0.3163 
  
####fBodyBodyGyroMag-mean() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.6671 -0.9799 -0.9743 -0.9616 -0.7657 -0.4087 -0.2643 -0.1003 

    lowest : -0.9865352 -0.9846176 -0.9843291 -0.9842911 -0.9840013
    highest: -0.0003627  0.0488589  0.1508257  0.1850782  0.2039798 
  
####fBodyBodyGyroMag-std() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.6723 -0.9718 -0.9637 -0.9488 -0.7727 -0.4277 -0.3043 -0.1833 

    lowest : -0.98147 -0.98125 -0.97847 -0.97744 -0.97726
    highest: -0.14160 -0.07433 -0.06148  0.03204  0.23666 
  
####fBodyBodyGyroJerkMag-mean() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.7564 -0.9924 -0.9905 -0.9813 -0.8779 -0.5831 -0.4450 -0.2662 

    lowest : -0.99762 -0.99520 -0.99506 -0.99482 -0.99481
    highest: -0.13271 -0.12518 -0.02290  0.07468  0.14662 
  
####fBodyBodyGyroJerkMag-std() 

    Data Type:  Double
  
      n missing  unique    Info    Mean     .05     .10     .25     .50     .75     .90     .95 
    180       0     180       1 -0.7715 -0.9922 -0.9907 -0.9802 -0.8941 -0.6081 -0.4530 -0.3427 

    lowest : -0.99759 -0.99497 -0.99474 -0.99467 -0.99421
    highest: -0.14573 -0.14325 -0.08417 -0.03986  0.28783 
  