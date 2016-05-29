## Code Book for variables in the data set

# 1. Downloading the data and getting to know it:
* The link to download the data for this Analysis can be found in the read.md file.
* The data represents the data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at [this link] (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

# 2. Transformations on the Data:
* The tidy data set contains the average of each variable for each activity and each subject. To get this:
	* The Subjects and labels variable were converted as factors.
	
# 3. Description of the Variables:
* The data set contains the following variables:
	* "Subjects" - Ranges from 1 - 30 (Data was collected from these 30 Subjects).	
	* "labels"	- Data collected from the Different activities. 
	* "time_body_acceleration-mean()" - Mean of Time domain acceleration Body Signals , it has 3 axis X,Y and Z	
	* "time_body_acceleration-std()" - Standard Deviation of Time domain acceleration Body Signals , it has 3 axis X,Y and Z		
	* "time_gravity_acceleration-mean()" - Mean of Time domain acceleration Gravity Signals , it has 3 axis X,Y and Z	
	* "time_gravity_acceleration-std()"	- Standard Deviation of Time domain acceleration Gravity Signals , it has 3 axis X,Y and Z	
	* "time_body_accelerationJerk-mean()" - Mean of Time domain acceleration Body Jerk Signals , it has 3 axis X,Y and Z	
	* "time_body_accelerationJerk-std()" - Standard Deviation of Time domain acceleration Body Jerk Signals , it has 3 axis X,Y and Z
	* "time_body_AngularVelocity-mean()" - Mean of Time domain angular velocity Body Signals , it has 3 axis X,Y and Z	
	* "time_body_AngularVelocity-std()"	- Standard Deviation of Time domain angular velocity Body Signals , it has 3 axis X,Y and Z	 
	* "time_body_AngularVelocityJerk-mean()" - Mean of Time domain angular velocity Body Jerk Signals , it has 3 axis X,Y and Z	
	* "time_body_AngularVelocityJerk-std()" - Standard Deviation of Time domain angular velocity Body Jerk Signals , it has 3 axis X,Y and Z	 
	* "time_body_accelerationMag-mean()" - Mean Magnitude of Time domain acceleration Body Signals 
	* "time_body_accelerationMag-std()" - Standard Deviation Magnitude of Time domain acceleration Body Signals 
	* "time_gravity_accelerationMag-mean()"	 - Mean Magnitude of Time domain acceleration gravity Signals 
	* "time_gravity_accelerationMag-std()"	- Standard Deviation Magnitude of Time domain gravity Body Signals 
	* "time_body_accelerationJerkMag-mean()" - Mean Magnitude of Time domain acceleration body Jerk Signals 
	* "time_body_accelerationJerkMag-std()"	- Standard Deviation Magnitude of Time domain bodyody Jerk Signals 
	* "time_body_AngularVelocityMag-mean()"	- Mean Magnitude of Time domain angular velocity Body Signals
	* "time_body_AngularVelocityMag-std()"	- Standard deviation of Magnitude of Time domain angular velocity Body Signals
	* "time_body_AngularVelocityJerkMag-mean()"	- Mean Magnitude of Time domain angular velocity Body Jerk Signals
	* "time_body_AngularVelocityJerkMag-std()"	- Standard deviation of Magnitude of Time domain angular velocity Body Jerk Signals

