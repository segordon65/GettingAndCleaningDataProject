GettingAndCleaningDataProject
=============================

Files:
- README.md - this file
- CodeBook.md - file describing variables, data, and transformations performed on original data set to create tidy data set
- run_analysis.R - R script used to create produce tidy data

Description of run_analysis.R
1. Reads the following input files

Labels
- activity_labels.txt 	: labels associated with the 6 activities
- features.txt 		: labels associated with the 561 extracted features

Training Set (7352 observations)
- subject_train.txt 	: subject ID
- Y_train.txt 		: activity ID
- X_train.txt 		: extracted features

Test Set (2947 observations)
- subject_test.txt 	: subject ID
- Y_test.txt		: activity ID
- X_test.txt		: extracted features

2. Clean-Up
- activity IDs converted to activity labels
- extracted features named using feature labels

3. Merging Data
- training set combined in to a single data set (7352 observations on 563 variables)
- test set combined in to a single data set (2947 observations on 563 variables)
- training and test sets combined in to a single data set (10299 observations on 563 vaiables)

4. Extracting 1st Tidy Data Set
- Extracted only the mean and standard deviation features (66 of the original 561 features). This data set contains 10299 obsevations on 68 variables

5. Producing 2nd Tiny Data Set
- Calculate the mean for each combination of (subject ID, activity, and extracted feature)
- Write this out to a text file for upload
