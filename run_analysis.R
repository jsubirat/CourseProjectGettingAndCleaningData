
run_analysis <- function() {
  # Step 0: Download and uncompress data to operate with
  dataURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(dataURL, destfile = "./getdata-projectfiles-UCI HAR Dataset.zip", method = "curl")
  unzip("getdata-projectfiles-UCI HAR Dataset.zip", exdir = "data")
  datadir <- "data/UCI HAR Dataset/"
  
  
  # Step 1: Merge the training and the test sets to create one data set (without labeling anything)
  # Step 1.1: Read the train dataset. This includes the data, the activity (associated to each row of 
  # the data) and the subject performing the activity (also associated to each row of the data).
  train_data <- read.csv(paste0(datadir, "train/X_train.txt"), sep = "", header = FALSE)
  train_activity <- read.csv(paste0(datadir, "train/y_train.txt"), sep = "", header = FALSE)
  train_subject <- read.csv(paste0(datadir, "train/subject_train.txt"), sep = "", header = FALSE)
  train_dataset_raw <- cbind(train_data, train_subject, train_activity)
  
  # Step 1.2: Read the test dataset. This includes the data, the activity (associated to each row of 
  # the data) and the subject performing the activity (also associated to each row of the data).
  test_data <- read.csv(paste0(datadir, "test/X_test.txt"), sep = "", header = FALSE)
  test_activity <- read.csv(paste0(datadir, "test/y_test.txt"), sep = "", header = FALSE)
  test_subject <- read.csv(paste0(datadir, "test/subject_test.txt"), sep = "", header = FALSE)
  test_dataset_raw <- cbind(test_data, test_subject, test_activity)
  
  # Step 1.3: Join the train and test raw datasets.
  dataset_raw <- rbind(train_dataset_raw, test_dataset_raw)
  
  
  # Step 2: Extract only the measurements on the mean and standard deviation for each measurement.
  # Step 2.1: Calculate the indexes to keep from the set of features
  feature_names <- read.csv(paste0(datadir, "features.txt"), sep = "", header = FALSE)
  feature_mean_sdev_indexes <- grep("mean|std", feature_names[,2])
  
  # Step 2.2: Also include the current indexes (in dataset_raw) for the activity type and the subject
  # in the set of column indexes to subset from dataset_raw
  subject_and_activity_indexes <- c(dim(dataset_raw)[2]-1, dim(dataset_raw)[2])
  indexes_to_keep <- c(feature_mean_sdev_indexes, subject_and_activity_indexes)
  
  # Step 2.3: subset dataset_raw for the desired columns
  dataset_raw <- dataset_raw[, indexes_to_keep]
    
  
  # Step 3: Uses descriptive activity names to name the activities in the data set
  
  # Step 3.1: Read the activity labels associated to each level from the activity_labels.txt file
  activity_labels <- read.csv(paste0(datadir, "activity_labels.txt"), sep = "", header = FALSE)
  
  # Step 3.2: convert the activity column in dataset_raw into a factor column with the labels specified intein 
  # activity_labels. Notice that the activity column is the one before the last column, because of the
  # order in the cbind operation performed in lines 29 and 36 of this script file.
  dataset_raw[,dim(dataset_raw)[2]] <- factor(dataset_raw[,dim(dataset_raw)[2]], labels = activity_labels[,2])
  
  # Step 4: Appropriately labels the data set with descriptive variable names. 
  
  # Step 4.1: obtain variable names from the subsetted positions of feature_names and add Activity
  # and Subject to the last two columns.
  dataset_raw_names <- c(as.character(feature_names[feature_mean_sdev_indexes, 2]), "Subject", "Activity")
  
  # Step 4.2: introduce these names to the dataset_raw header. Make them R-compilant with make.names?:
  names(dataset_raw) <- make.names(dataset_raw_names, unique = TRUE)
  
  # Step 5: From the data set in step 4, creates a second, independent tidy data set with the average of
  # each variable for each activity and each subject.
  
  # Step 5.1: split dataset_raw into multiple datasets, each of them having a unique combination of Activity and Subject
  dataset_raw_splitted_by_activity_and_subject <- split(dataset_raw, interaction(dataset_raw$Activity, dataset_raw$Subject))

  # Step 5.2: Unclass first to make colMeans, as it fails for factor variables
  dataset_raw$Activity <- unclass(dataset_raw$Activity)
  
  # Step 5.3: split the raw dataset by subject and activity
  dataset_raw_splitted_by_subject_and_activity <- split(dataset_raw, interaction(dataset_raw$Subject, dataset_raw$Activity))
  
  # Step 5.4: Calculate the mean of the columns for each subset, corresponding to a unique <Subject, Activity> combination.
  transposed_tidy_dataset <- lapply(dataset_raw_splitted_by_subject_and_activity, function(x){colMeans(x)})
  
  # Step 5.5: the resulting dataset is a list. First, it is converted to a dataset, but it needs to be transposed
  # so it gets the desired form:
  tidy_dataset <- as.data.frame(t(as.data.frame(transposed_tidy_dataset)))
  
  # Step 5.6: restore the activity column in the resulting dataset, it needs to be a factor.
  tidy_dataset$Activity <- factor(tidy_dataset$Activity, labels = activity_labels[,2])
  
  # Step 5.7: remove residual row names
  row.names(tidy_dataset) <- NULL
  
  # Step 5.8: Update the names of the tidy dataset
  names(tidy_dataset) <- c(paste0("Mean", names(tidy_dataset)[1:(length(names(tidy_dataset))-2)]), "Subject", "Activity")
  
  # Step 6: return the tidy dataset
  tidy_dataset
}
