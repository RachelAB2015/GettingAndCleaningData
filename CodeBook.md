__Note: I don't fully understand everything that was involved in this experiment, so I am describing the variables as best as I can given the information in features_info.txt provided with the course project. I also had trouble figuring out the units of measurement for the variables/columns provided with this project, hence I have not included any info on that (even though a CodeBook ought to...)__

## Dataframe: human.activity.means
__subject (column 1)__  
  integer  
  identifies which subject participated in the test (values range 1-30)  
  
__activity (column 2)__  
  character  
  description of test activity  
  
The following variables give the average of the measurement for that individual subject doing this activity. 

General abbreviations used in measurement variables (all variables are num)  
  Acc refers to accelerometer  
  Gyro refers to gyroscope  
  Jerk refers to Jerk signals  
  Mag stands for magnitute  
  XYZ refer to the 3-axial signals in the X, Y and Z directions, respectively  

 __timeBodyAcc.mean.X (column 3)__  
  numeric  
	Mean of time domain signals with body acceleration signal in x direction
 
 __timeBodyAcc.mean.Y (column 4)__  
	numeric  
	Mean of time domain signals with body acceleration signal in y direction
 
 __timeBodyAcc.mean.Z (column 5)__  
	numeric  
	Mean of time domain signals with body acceleration signal in z direction
 
 __timeBodyAcc.std.X (column 6)__  
	numeric  
	Standard deviation of time domain signals with body acceleration signal in x direction
 
 __timeBodyAcc.std.Y (column 7)__  
	numeric  
	Standard deviation of time domain signals with body acceleration signal in y direction
 
 __timeBodyAcc.std.Z (column 8)__  
	numeric  
	Standard deviation of time domain signals with body acceleration signal in z direction
 
 __timeGravityAcc.mean.X (column 9)__  
	numeric  
	Mean of time domain signals with gravity acceleration signal in x direction
 
 __timeGravityAcc.mean.Y (column 10)__  
	numeric  
	Mean of time domain signals with gravity acceleration signal in y direction
 
 __timeGravityAcc.mean.Z (column 11)__  
	numeric  
	Mean of time domain signals with gravity acceleration signal in z direction
 
 __timeGravityAcc.std.X (column 12)__  
	numeric  
	Standard deviation of time domain signals with gravity acceleration signal in x direction
 
 __timeGravityAcc.std.Y (column 13)__  
	numeric  
	Standard deviation of time domain signals with gravity acceleration signal in y direction
 
 __timeGravityAcc.std.Z (column 14)__  
	numeric  
	Standard deviation of time domain signals with gravity acceleration signal in z direction
 
 __timeBodyAccJerk.mean.X (column 15)__  
	numeric  
	Mean of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in x direction
 
 __timeBodyAccJerk.mean.Y (column 16)__  
	numeric  
	Mean of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in y direction
 
 __timeBodyAccJerk.mean.Z (column 17)__  
	numeric  
	Mean of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in z direction
 
 __timeBodyAccJerk.std.X (column 18)__  
	numeric  
	Standard deviation of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in x direction
 
 __timeBodyAccJerk.std.Y (column 19)__  
	numeric  
	Standard deviation of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in y direction
 
 __timeBodyAccJerk.std.Z (column 20)__  
	numeric  
	Standard deviation of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in z direction
 
 __timeBodyGyro.mean.X (column 21)__  
	numeric  
	Mean of time domain signals with body gyroscope signal in x direction
 
 __timeBodyGyro.mean.Y (column 22)__  
	numeric  
	Mean of time domain signals with body gyroscope signal in y direction
 
 __timeBodyGyro.mean.Z (column 23)__  
	numeric  
	Mean of time domain signals with body gyroscope signal in z direction
 
 __timeBodyGyro.std.X (column 24)__  
	numeric  
	Standard deviation of time domain signals with body gyroscope signal in x direction
 
 __timeBodyGyro.std.Y (column 25)__  
	numeric  
	Standard deviation of time domain signals with body gyroscope signal in y direction
 
 __timeBodyGyro.std.Z (column 26)__  
	numeric  
	Standard deviation of time domain signals with body gyroscope signal in z direction
 
 __timeBodyGyroJerk.mean.X (column 27)__  
	numeric  
	Mean of time domain signals with body gyroscope signal applying Fast Fourier Transform (FFT) in x direction
 
 __timeBodyGyroJerk.mean.Y (column 28)__  
	numeric  
	Mean of time domain signals with body gyroscope signal applying Fast Fourier Transform (FFT) in y direction
 
 __timeBodyGyroJerk.mean.Z (column 29)__  
	numeric  
	Mean of time domain signals with body gyroscope signal applying Fast Fourier Transform (FFT) in z direction
 
 __timeBodyGyroJerk.std.X (column 30)__  
	numeric  
	Standard deviation of time domain signals with body gyroscope signal applying Fast Fourier Transform (FFT) in x direction
 
 __timeBodyGyroJerk.std.Y (column 31)__  
	numeric  
	Standard deviation of time domain signals with body gyroscope signal applying Fast Fourier Transform (FFT) in y direction
 
 __timeBodyGyroJerk.std.Z (column 32)__  
	numeric  
	Standard deviation of time domain signals with body gyroscope signal applying Fast Fourier Transform (FFT) in z direction
 
 __timeBodyAccMag.mean (column 33)__  
	numeric  
	Mean of time domain signals with body acceleration signal (magnitude)  
 
 __timeBodyAccMag.std (column 34)__  
	numeric  
	Standard deviation of time domain signals with body acceleration signal (magnitude)  
 
 __timeGravityAccMag.mean (column 35)__  
	numeric  
	Mean of time domain signals with gravity acceleration signal (magnitude)  
 
 __timeGravityAccMag.std (column 36)__  
	numeric  
	Standard deviation of time domain signals with gravity acceleration signal (magnitude)  
 
 __timeBodyAccJerkMag.mean (column 37)__  
	numeric  
	Mean of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) (magnitude)  
 
 __timeBodyAccJerkMag.std (column 38)__  
	numeric  
	Standard deviation of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) (magnitude)  
 
 __timeBodyGyroMag.mean (column 39)__  
	numeric  
	Mean of time domain signals with body gyroscope signal (magnitude)  
 
 __timeBodyGyroMag.std (column 40)__  
	numeric  
	Standard deviation of time domain signals with body gyroscope signal (magnitude)  
 
 __timeBodyGyroJerkMag.mean (column 41)__  
	numeric  
	Mean of time domain signals with body gyroscope signal applying Fast Fourier Transform (FFT) (magnitude)  
 
 __timeBodyGyroJerkMag.std (column 42)__  
	numeric  
	Standard deviation of time domain signals with body gyroscope signal applying Fast Fourier Transform (FFT) (magnitude)  
 
 __freqBodyAcc.mean.X (column 43)__  
	numeric  
	Mean of frequency domain signals with body acceleration signal in x direction
 
 __freqBodyAcc.mean.Y (column 44)__  
	numeric  
	Mean of frequency domain signals with body acceleration signal in y direction
 
 __freqBodyAcc.mean.Z (column 45)__  
	numeric  
	Mean of frequency domain signals with body acceleration signal in z direction
 
 __freqBodyAcc.std.X (column 46)__  
	numeric  
	Standard deviation of frequency domain signals with body acceleration signal in x direction
 
 __freqBodyAcc.std.Y (column 47)__  
	numeric  
	Standard deviation of frequency domain signals with body acceleration signal in y direction
 
 __freqBodyAcc.std.Z (column 48)__  
	numeric  
	Standard deviation of frequency domain signals with body acceleration signal in z direction
 
 __freqBodyAccJerk.mean.X (column 49)__  
	numeric  
	Mean of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in x direction
 
 __freqBodyAccJerk.mean.Y (column 50)__  
	numeric  
	Mean of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in y direction
 
 __freqBodyAccJerk.mean.Z (column 51)__  
	numeric  
	Mean of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in z direction
 
 __freqBodyAccJerk.std.X (column 52)__  
	numeric  
	Standard deviation of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in x direction
 
 __freqBodyAccJerk.std.Y (column 53)__  
	numeric  
	Standard deviation of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in y direction
 
 __freqBodyAccJerk.std.Z (column 54)__  
	numeric  
	Standard deviation of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in z direction
 
 __freqBodyGyro.mean.X (column 55)__  
	numeric  
	Mean of frequency domain signals with body gyroscope signal in x direction
 
 __freqBodyGyro.mean.Y (column 56)__  
	numeric  
	Mean of frequency domain signals with body gyroscope signal in y direction
 
 __freqBodyGyro.mean.Z (column 57)__  
	numeric  
	Mean of frequency domain signals with body gyroscope signal in z direction
 
 __freqBodyGyro.std.X (column 58)__  
	numeric  
	Standard deviation of frequency domain signals with body gyroscope signal in x direction
 
 __freqBodyGyro.std.Y (column 59)__  
	numeric  
	Standard deviation of frequency domain signals with body gyroscope signal in y direction
 
 __freqBodyGyro.std.Z (column 60)__  
	numeric  
	Standard deviation of frequency domain signals with body gyroscope signal in z direction
 
 __freqBodyAccMag.mean (column 61)__  
	numeric  
	Mean of frequency domain signals with body acceleration signal (magnitude)  
 
 __freqBodyAccMag.std (column 62)__  
	numeric  
	Standard deviation of frequency domain signals with body acceleration signal (magnitude)  
 