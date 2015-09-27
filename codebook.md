---
title: "CodeBook"
author: "ksapp1"
date: "9/27/2015"
output: 
  html_document: 
    keep_md: yes
    number_sections: yes
    toc: yes
---

# Project Description

_Taken from the original data's README.txt file_
```
==================================================================  
Human Activity Recognition Using Smartphones Dataset  
Version 1.0  
==================================================================  
Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.  
Smartlab - Non Linear Complex Systems Laboratory  
DITEN - Universit‡ degli Studi di Genova.  
Via Opera Pia 11A, I-16145, Genoa, Italy.  
activityrecognition@smartlab.ws  
www.smartlab.ws  
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.  

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
```
_Added Description by Kayla_

Created a tidy data set accordingto the parameters laid out in the Getting and Cleaning Data projet assignment guidelines.


1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Collection of raw data
_Taken from the original data's README.txt file_
```
==================================================================  
For each record it is provided:  
==================================================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

==================================================================  
The dataset includes the following files:  
==================================================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 

==================================================================  
Notes:   
==================================================================  
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset contact: <activityrecognition@smartlab.ws>
```

### Notes on the original (raw) data

_Taken from the original data's featuresinfo txt file_
```
Feature Selection 
=================

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors.

Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean

The complete list of variables of each feature vector is available in 'features.txt'
```

# Creating the tidy datafile
### Guide to create the tidy data file
1. Download and unzip the zip file: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> that contains the data described here <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>. Save the contents of the .zip folder into a folder "./data" in your working directory. 
2. Download and save the run_analysis.R script to your working directory. For information about the script look at the README.md file.
3. Run the run_analysis.R script to obtain a tidy data text file.
### Cleaning of the data
1. Tidy the test and train data.
2. merge the test and train data frames.
3. Extract the smaller data frame that only contains the means and standard deviations.
4. Ensure that the data frame is easily understood by adding appropriate column names.
5. Use the dplyr package to create a melted data frame based on the ids: ActivityLabel and Subject.
6. Use the melted data frame to find the averages for each activity for the ids.
7. Save the tidy and cleaned data frame to a text file.

For detailed information on what the run_analysis.R script does read the README.md file. 

# Description of the variables in the tiny_data.txt file
## General description of the file

* dimensions: [1] 180  81 
* summary:  Subject                ActivityLabel tBodyAcc-mean()-X
 Min.   : 1.0   LAYING            :30    Min.   :0.2216   
 1st Qu.: 8.0   SITTING           :30    1st Qu.:0.2712   
 Median :15.5   STANDING          :30    Median :0.2770   
 Mean   :15.5   WALKING           :30    Mean   :0.2743   
 3rd Qu.:23.0   WALKING_DOWNSTAIRS:30    3rd Qu.:0.2800   
 Max.   :30.0   WALKING_UPSTAIRS  :30    Max.   :0.3015   
 tBodyAcc-mean()-Y   tBodyAcc-mean()-Z  tBodyAcc-std()-X  tBodyAcc-std()-Y  
 Min.   :-0.040514   Min.   :-0.15251   Min.   :-0.9961   Min.   :-0.99024  
 1st Qu.:-0.020022   1st Qu.:-0.11207   1st Qu.:-0.9799   1st Qu.:-0.94205  
 Median :-0.017262   Median :-0.10819   Median :-0.7526   Median :-0.50897  
 Mean   :-0.017876   Mean   :-0.10916   Mean   :-0.5577   Mean   :-0.46046  
 3rd Qu.:-0.014936   3rd Qu.:-0.10443   3rd Qu.:-0.1984   3rd Qu.:-0.03077  
 Max.   :-0.001308   Max.   :-0.07538   Max.   : 0.6269   Max.   : 0.61694  
 tBodyAcc-std()-Z  tGravityAcc-mean()-X tGravityAcc-mean()-Y
 Min.   :-0.9877   Min.   :-0.6800      Min.   :-0.47989    
 1st Qu.:-0.9498   1st Qu.: 0.8376      1st Qu.:-0.23319    
 Median :-0.6518   Median : 0.9208      Median :-0.12782    
 Mean   :-0.5756   Mean   : 0.6975      Mean   :-0.01621    
 3rd Qu.:-0.2306   3rd Qu.: 0.9425      3rd Qu.: 0.08773    
 Max.   : 0.6090   Max.   : 0.9745      Max.   : 0.95659    
 tGravityAcc-mean()-Z tGravityAcc-std()-X tGravityAcc-std()-Y
 Min.   :-0.49509     Min.   :-0.9968     Min.   :-0.9942    
 1st Qu.:-0.11726     1st Qu.:-0.9825     1st Qu.:-0.9711    
 Median : 0.02384     Median :-0.9695     Median :-0.9590    
 Mean   : 0.07413     Mean   :-0.9638     Mean   :-0.9524    
 3rd Qu.: 0.14946     3rd Qu.:-0.9509     3rd Qu.:-0.9370    
 Max.   : 0.95787     Max.   :-0.8296     Max.   :-0.6436    
 tGravityAcc-std()-Z tBodyAccJerk-mean()-X tBodyAccJerk-mean()-Y
 Min.   :-0.9910     Min.   :0.04269       Min.   :-0.0386872   
 1st Qu.:-0.9605     1st Qu.:0.07396       1st Qu.: 0.0004664   
 Median :-0.9450     Median :0.07640       Median : 0.0094698   
 Mean   :-0.9364     Mean   :0.07947       Mean   : 0.0075652   
 3rd Qu.:-0.9180     3rd Qu.:0.08330       3rd Qu.: 0.0134008   
 Max.   :-0.6102     Max.   :0.13019       Max.   : 0.0568186   
 tBodyAccJerk-mean()-Z tBodyAccJerk-std()-X tBodyAccJerk-std()-Y
 Min.   :-0.067458     Min.   :-0.9946      Min.   :-0.9895     
 1st Qu.:-0.010601     1st Qu.:-0.9832      1st Qu.:-0.9724     
 Median :-0.003861     Median :-0.8104      Median :-0.7756     
 Mean   :-0.004953     Mean   :-0.5949      Mean   :-0.5654     
 3rd Qu.: 0.001958     3rd Qu.:-0.2233      3rd Qu.:-0.1483     
 Max.   : 0.038053     Max.   : 0.5443      Max.   : 0.3553     
 tBodyAccJerk-std()-Z tBodyGyro-mean()-X tBodyGyro-mean()-Y
 Min.   :-0.99329     Min.   :-0.20578   Min.   :-0.20421  
 1st Qu.:-0.98266     1st Qu.:-0.04712   1st Qu.:-0.08955  
 Median :-0.88366     Median :-0.02871   Median :-0.07318  
 Mean   :-0.73596     Mean   :-0.03244   Mean   :-0.07426  
 3rd Qu.:-0.51212     3rd Qu.:-0.01676   3rd Qu.:-0.06113  
 Max.   : 0.03102     Max.   : 0.19270   Max.   : 0.02747  
 tBodyGyro-mean()-Z tBodyGyro-std()-X tBodyGyro-std()-Y tBodyGyro-std()-Z
 Min.   :-0.07245   Min.   :-0.9943   Min.   :-0.9942   Min.   :-0.9855  
 1st Qu.: 0.07475   1st Qu.:-0.9735   1st Qu.:-0.9629   1st Qu.:-0.9609  
 Median : 0.08512   Median :-0.7890   Median :-0.8017   Median :-0.8010  
 Mean   : 0.08744   Mean   :-0.6916   Mean   :-0.6533   Mean   :-0.6164  
 3rd Qu.: 0.10177   3rd Qu.:-0.4414   3rd Qu.:-0.4196   3rd Qu.:-0.3106  
 Max.   : 0.17910   Max.   : 0.2677   Max.   : 0.4765   Max.   : 0.5649  
 tBodyGyroJerk-mean()-X tBodyGyroJerk-mean()-Y tBodyGyroJerk-mean()-Z
 Min.   :-0.15721       Min.   :-0.07681       Min.   :-0.092500     
 1st Qu.:-0.10322       1st Qu.:-0.04552       1st Qu.:-0.061725     
 Median :-0.09868       Median :-0.04112       Median :-0.053430     
 Mean   :-0.09606       Mean   :-0.04269       Mean   :-0.054802     
 3rd Qu.:-0.09110       3rd Qu.:-0.03842       3rd Qu.:-0.048985     
 Max.   :-0.02209       Max.   :-0.01320       Max.   :-0.006941     
 tBodyGyroJerk-std()-X tBodyGyroJerk-std()-Y tBodyGyroJerk-std()-Z
 Min.   :-0.9965       Min.   :-0.9971       Min.   :-0.9954      
 1st Qu.:-0.9800       1st Qu.:-0.9832       1st Qu.:-0.9848      
 Median :-0.8396       Median :-0.8942       Median :-0.8610      
 Mean   :-0.7036       Mean   :-0.7636       Mean   :-0.7096      
 3rd Qu.:-0.4629       3rd Qu.:-0.5861       3rd Qu.:-0.4741      
 Max.   : 0.1791       Max.   : 0.2959       Max.   : 0.1932      
 tBodyAccMag-mean() tBodyAccMag-std() tGravityAccMag-mean()
 Min.   :-0.9865    Min.   :-0.9865   Min.   :-0.9865      
 1st Qu.:-0.9573    1st Qu.:-0.9430   1st Qu.:-0.9573      
 Median :-0.4829    Median :-0.6074   Median :-0.4829      
 Mean   :-0.4973    Mean   :-0.5439   Mean   :-0.4973      
 3rd Qu.:-0.0919    3rd Qu.:-0.2090   3rd Qu.:-0.0919      
 Max.   : 0.6446    Max.   : 0.4284   Max.   : 0.6446      
 tGravityAccMag-std() tBodyAccJerkMag-mean() tBodyAccJerkMag-std()
 Min.   :-0.9865      Min.   :-0.9928        Min.   :-0.9946      
 1st Qu.:-0.9430      1st Qu.:-0.9807        1st Qu.:-0.9765      
 Median :-0.6074      Median :-0.8168        Median :-0.8014      
 Mean   :-0.5439      Mean   :-0.6079        Mean   :-0.5842      
 3rd Qu.:-0.2090      3rd Qu.:-0.2456        3rd Qu.:-0.2173      
 Max.   : 0.4284      Max.   : 0.4345        Max.   : 0.4506      
 tBodyGyroMag-mean() tBodyGyroMag-std() tBodyGyroJerkMag-mean()
 Min.   :-0.9807     Min.   :-0.9814    Min.   :-0.99732       
 1st Qu.:-0.9461     1st Qu.:-0.9476    1st Qu.:-0.98515       
 Median :-0.6551     Median :-0.7420    Median :-0.86479       
 Mean   :-0.5652     Mean   :-0.6304    Mean   :-0.73637       
 3rd Qu.:-0.2159     3rd Qu.:-0.3602    3rd Qu.:-0.51186       
 Max.   : 0.4180     Max.   : 0.3000    Max.   : 0.08758       
 tBodyGyroJerkMag-std() fBodyAcc-mean()-X fBodyAcc-mean()-Y 
 Min.   :-0.9977        Min.   :-0.9952   Min.   :-0.98903  
 1st Qu.:-0.9805        1st Qu.:-0.9787   1st Qu.:-0.95361  
 Median :-0.8809        Median :-0.7691   Median :-0.59498  
 Mean   :-0.7550        Mean   :-0.5758   Mean   :-0.48873  
 3rd Qu.:-0.5767        3rd Qu.:-0.2174   3rd Qu.:-0.06341  
 Max.   : 0.2502        Max.   : 0.5370   Max.   : 0.52419  
 fBodyAcc-mean()-Z fBodyAcc-std()-X  fBodyAcc-std()-Y   fBodyAcc-std()-Z 
 Min.   :-0.9895   Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872  
 1st Qu.:-0.9619   1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459  
 Median :-0.7236   Median :-0.7470   Median :-0.51338   Median :-0.6441  
 Mean   :-0.6297   Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824  
 3rd Qu.:-0.3183   3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655  
 Max.   : 0.2807   Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871  
 fBodyAcc-meanFreq()-X fBodyAcc-meanFreq()-Y fBodyAcc-meanFreq()-Z
 Min.   :-0.63591      Min.   :-0.379518     Min.   :-0.52011     
 1st Qu.:-0.39165      1st Qu.:-0.081314     1st Qu.:-0.03629     
 Median :-0.25731      Median : 0.007855     Median : 0.06582     
 Mean   :-0.23227      Mean   : 0.011529     Mean   : 0.04372     
 3rd Qu.:-0.06105      3rd Qu.: 0.086281     3rd Qu.: 0.17542     
 Max.   : 0.15912      Max.   : 0.466528     Max.   : 0.40253     
 fBodyAccJerk-mean()-X fBodyAccJerk-mean()-Y fBodyAccJerk-mean()-Z
 Min.   :-0.9946       Min.   :-0.9894       Min.   :-0.9920      
 1st Qu.:-0.9828       1st Qu.:-0.9725       1st Qu.:-0.9796      
 Median :-0.8126       Median :-0.7817       Median :-0.8707      
 Mean   :-0.6139       Mean   :-0.5882       Mean   :-0.7144      
 3rd Qu.:-0.2820       3rd Qu.:-0.1963       3rd Qu.:-0.4697      
 Max.   : 0.4743       Max.   : 0.2767       Max.   : 0.1578      
 fBodyAccJerk-std()-X fBodyAccJerk-std()-Y fBodyAccJerk-std()-Z
 Min.   :-0.9951      Min.   :-0.9905      Min.   :-0.993108   
 1st Qu.:-0.9847      1st Qu.:-0.9737      1st Qu.:-0.983747   
 Median :-0.8254      Median :-0.7852      Median :-0.895121   
 Mean   :-0.6121      Mean   :-0.5707      Mean   :-0.756489   
 3rd Qu.:-0.2475      3rd Qu.:-0.1685      3rd Qu.:-0.543787   
 Max.   : 0.4768      Max.   : 0.3498      Max.   :-0.006236   
 fBodyAccJerk-meanFreq()-X fBodyAccJerk-meanFreq()-Y
 Min.   :-0.57604          Min.   :-0.60197         
 1st Qu.:-0.28966          1st Qu.:-0.39751         
 Median :-0.06091          Median :-0.23209         
 Mean   :-0.06910          Mean   :-0.22810         
 3rd Qu.: 0.17660          3rd Qu.:-0.04721         
 Max.   : 0.33145          Max.   : 0.19568         
 fBodyAccJerk-meanFreq()-Z fBodyGyro-mean()-X fBodyGyro-mean()-Y
 Min.   :-0.62756          Min.   :-0.9931    Min.   :-0.9940   
 1st Qu.:-0.30867          1st Qu.:-0.9697    1st Qu.:-0.9700   
 Median :-0.09187          Median :-0.7300    Median :-0.8141   
 Mean   :-0.13760          Mean   :-0.6367    Mean   :-0.6767   
 3rd Qu.: 0.03858          3rd Qu.:-0.3387    3rd Qu.:-0.4458   
 Max.   : 0.23011          Max.   : 0.4750    Max.   : 0.3288   
 fBodyGyro-mean()-Z fBodyGyro-std()-X fBodyGyro-std()-Y fBodyGyro-std()-Z
 Min.   :-0.9860    Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867  
 1st Qu.:-0.9624    1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643  
 Median :-0.7909    Median :-0.8086   Median :-0.7964   Median :-0.8224  
 Mean   :-0.6044    Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577  
 3rd Qu.:-0.2635    3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916  
 Max.   : 0.4924    Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225  
 fBodyGyro-meanFreq()-X fBodyGyro-meanFreq()-Y fBodyGyro-meanFreq()-Z
 Min.   :-0.395770      Min.   :-0.66681       Min.   :-0.50749      
 1st Qu.:-0.213363      1st Qu.:-0.29433       1st Qu.:-0.15481      
 Median :-0.115527      Median :-0.15794       Median :-0.05081      
 Mean   :-0.104551      Mean   :-0.16741       Mean   :-0.05718      
 3rd Qu.: 0.002655      3rd Qu.:-0.04269       3rd Qu.: 0.04152      
 Max.   : 0.249209      Max.   : 0.27314       Max.   : 0.37707      
 fBodyAccMag-mean() fBodyAccMag-std() fBodyAccMag-meanFreq()
 Min.   :-0.9868    Min.   :-0.9876   Min.   :-0.31234      
 1st Qu.:-0.9560    1st Qu.:-0.9452   1st Qu.:-0.01475      
 Median :-0.6703    Median :-0.6513   Median : 0.08132      
 Mean   :-0.5365    Mean   :-0.6210   Mean   : 0.07613      
 3rd Qu.:-0.1622    3rd Qu.:-0.3654   3rd Qu.: 0.17436      
 Max.   : 0.5866    Max.   : 0.1787   Max.   : 0.43585      
 fBodyBodyAccJerkMag-mean() fBodyBodyAccJerkMag-std()
 Min.   :-0.9940            Min.   :-0.9944          
 1st Qu.:-0.9770            1st Qu.:-0.9752          
 Median :-0.7940            Median :-0.8126          
 Mean   :-0.5756            Mean   :-0.5992          
 3rd Qu.:-0.1872            3rd Qu.:-0.2668          
 Max.   : 0.5384            Max.   : 0.3163          
 fBodyBodyAccJerkMag-meanFreq() fBodyBodyGyroMag-mean()
 Min.   :-0.12521               Min.   :-0.9865        
 1st Qu.: 0.04527               1st Qu.:-0.9616        
 Median : 0.17198               Median :-0.7657        
 Mean   : 0.16255               Mean   :-0.6671        
 3rd Qu.: 0.27593               3rd Qu.:-0.4087        
 Max.   : 0.48809               Max.   : 0.2040        
 fBodyBodyGyroMag-std() fBodyBodyGyroMag-meanFreq()
 Min.   :-0.9815        Min.   :-0.45664           
 1st Qu.:-0.9488        1st Qu.:-0.16951           
 Median :-0.7727        Median :-0.05352           
 Mean   :-0.6723        Mean   :-0.03603           
 3rd Qu.:-0.4277        3rd Qu.: 0.08228           
 Max.   : 0.2367        Max.   : 0.40952           
 fBodyBodyGyroJerkMag-mean() fBodyBodyGyroJerkMag-std()
 Min.   :-0.9976             Min.   :-0.9976           
 1st Qu.:-0.9813             1st Qu.:-0.9802           
 Median :-0.8779             Median :-0.8941           
 Mean   :-0.7564             Mean   :-0.7715           
 3rd Qu.:-0.5831             3rd Qu.:-0.6081           
 Max.   : 0.1466             Max.   : 0.2878           
 fBodyBodyGyroJerkMag-meanFreq()
 Min.   :-0.18292               
 1st Qu.: 0.05423               
 Median : 0.11156               
 Mean   : 0.12592               
 3rd Qu.: 0.20805               
 Max.   : 0.42630
* variables: [1] "Subject"                         "ActivityLabel"                  
 [3] "tBodyAcc-mean()-X"               "tBodyAcc-mean()-Y"              
 [5] "tBodyAcc-mean()-Z"               "tBodyAcc-std()-X"               
 [7] "tBodyAcc-std()-Y"                "tBodyAcc-std()-Z"               
 [9] "tGravityAcc-mean()-X"            "tGravityAcc-mean()-Y"           
[11] "tGravityAcc-mean()-Z"            "tGravityAcc-std()-X"            
[13] "tGravityAcc-std()-Y"             "tGravityAcc-std()-Z"            
[15] "tBodyAccJerk-mean()-X"           "tBodyAccJerk-mean()-Y"          
[17] "tBodyAccJerk-mean()-Z"           "tBodyAccJerk-std()-X"           
[19] "tBodyAccJerk-std()-Y"            "tBodyAccJerk-std()-Z"           
[21] "tBodyGyro-mean()-X"              "tBodyGyro-mean()-Y"             
[23] "tBodyGyro-mean()-Z"              "tBodyGyro-std()-X"              
[25] "tBodyGyro-std()-Y"               "tBodyGyro-std()-Z"              
[27] "tBodyGyroJerk-mean()-X"          "tBodyGyroJerk-mean()-Y"         
[29] "tBodyGyroJerk-mean()-Z"          "tBodyGyroJerk-std()-X"          
[31] "tBodyGyroJerk-std()-Y"           "tBodyGyroJerk-std()-Z"          
[33] "tBodyAccMag-mean()"              "tBodyAccMag-std()"              
[35] "tGravityAccMag-mean()"           "tGravityAccMag-std()"           
[37] "tBodyAccJerkMag-mean()"          "tBodyAccJerkMag-std()"          
[39] "tBodyGyroMag-mean()"             "tBodyGyroMag-std()"             
[41] "tBodyGyroJerkMag-mean()"         "tBodyGyroJerkMag-std()"         
[43] "fBodyAcc-mean()-X"               "fBodyAcc-mean()-Y"              
[45] "fBodyAcc-mean()-Z"               "fBodyAcc-std()-X"               
[47] "fBodyAcc-std()-Y"                "fBodyAcc-std()-Z"               
[49] "fBodyAcc-meanFreq()-X"           "fBodyAcc-meanFreq()-Y"          
[51] "fBodyAcc-meanFreq()-Z"           "fBodyAccJerk-mean()-X"          
[53] "fBodyAccJerk-mean()-Y"           "fBodyAccJerk-mean()-Z"          
[55] "fBodyAccJerk-std()-X"            "fBodyAccJerk-std()-Y"           
[57] "fBodyAccJerk-std()-Z"            "fBodyAccJerk-meanFreq()-X"      
[59] "fBodyAccJerk-meanFreq()-Y"       "fBodyAccJerk-meanFreq()-Z"      
[61] "fBodyGyro-mean()-X"              "fBodyGyro-mean()-Y"             
[63] "fBodyGyro-mean()-Z"              "fBodyGyro-std()-X"              
[65] "fBodyGyro-std()-Y"               "fBodyGyro-std()-Z"              
[67] "fBodyGyro-meanFreq()-X"          "fBodyGyro-meanFreq()-Y"         
[69] "fBodyGyro-meanFreq()-Z"          "fBodyAccMag-mean()"             
[71] "fBodyAccMag-std()"               "fBodyAccMag-meanFreq()"         
[73] "fBodyBodyAccJerkMag-mean()"      "fBodyBodyAccJerkMag-std()"      
[75] "fBodyBodyAccJerkMag-meanFreq()"  "fBodyBodyGyroMag-mean()"        
[77] "fBodyBodyGyroMag-std()"          "fBodyBodyGyroMag-meanFreq()"    
[79] "fBodyBodyGyroJerkMag-mean()"     "fBodyBodyGyroJerkMag-std()"     
[81] "fBodyBodyGyroJerkMag-meanFreq()"

## Variables
* ActivityLabel: the activity that each participant was performing
* Subject: the participant's id number
* t prefix: denotes time domain signals
* f prefix: denotes the fast fourier transform was applied to the signal
* X,Y,Z: denotes the 3-axial signals in the x,y,and,z directions
* ACC: accelerometer, captured at constant rate of 50 Hz
* Gyro: gyroscope, captured at constant rate of 50 Hz
* BodyAcc: Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise separated into body acceleration using another los pass Butterworth filter with a corner frequency of 0.3 Hz
* GravityAcc: Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise separated into gravity acceleration using another los pass Butterworth filter with a corner frequency of 0.3 Hz
* BodyAccJerk: linear acceleration derived in time
* BodyGyroJerk: angular acceleration derived in time
* BodyAccMag: the magnitudes were calculated using the Eucli dean norm
* GravityAccMag: the magnitudes were calculated using the Eucli dean norm
* BodyAccJerkMag: the magnitudes were calculated using the Eucli dean norm
* BodyGyroMag: the magnitudes were calculated using the Eucli dean norm
* BodyGyroJerkMag: the magnitudes were calculated using the Eucli dean norm
* mean(): mean value
*std(): standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
*Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

gravityMean
tBodyAccMean
tBodyAccJerkMean
tBodyGyroMean
tBodyGyroJerkMean


# Sources
<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

```
License:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
```