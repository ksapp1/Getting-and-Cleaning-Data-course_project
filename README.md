---
title: "README"
author: "ksapp1"
date: "9/27/2015"
output: 
  html_document: 
    keep_md: yes
    toc: yes
---

# Problem Summary

<http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>

Given the data described in the above link extract a tidy data set that gives the averages of each variabe for each activity that each participant performed. This is a course project for the September session of the _Getting and Cleaning data_ course on _Coursera_ offered by _Johns Hopkins University_.

# Repository Contents
* run_analysis.R: r script to produce a tidy data set that matches the speficifes criteria on the project assignment page
* tidy_data.txt: the exported tidy data file the the R script produces
* README.md: this readme file
* codebook.md: a codebook for the tidy data set.
* the raw data set is available at <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip>

# Decription of R script
* Obtaining the raw data and R script: Download and unzip the zip file: <https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip> that contains the data described here <http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones>. Save the contents of the .zip folder into a folder "./data" in your working directory. Download and save the run_analysis.R script in this Repo to your working directory.
__ run analysis script__
* To check the script as it goes there are commented dim() and head() functions that can be uncommented
1. Reads in the features and activities using read.table
2. Reads in the train and test data, labels, and subjects using read.table
    * uncomment the lines below the ### to print the dimensions and begining of the data sets
3. For clarity use the features to give the data column names
4. Combine the test data, labels, and subjects into one data set
5. Combine the train data, labels, and subjects into one data set
    * uncomment the lines below the ### to print the dimensions and begining of the data sets
6. merge the test and train data into the data set joined
    * uncomment the lines below the ### to print the dimensions the data sets
7. Create the mstds data frame that contains the extracted means and standard deviations
    * uncomment the lines below the ### to print the dimensions and begining of the data sets
8. Update Activity names in joined and mstds data
    * fisrt make sure the activities are character strings
    * use for loop to undate the ActivityLabel columns in joined and mstds
9. Create a melted data frame using melt, so that the data is organized by ActivityLabel and Subject
10. use as.numeric to make sure the values for each variabl are numeric values
11. use dcast to find the average of each variable for each subjuect and ActivityLabel
    * uncomment the lines below the ### to print the dimensions and begining of the data sets
12. write the new tidy and clean data frame to a test file