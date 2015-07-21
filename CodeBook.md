(Note: I don't fully understand everything that was involved in this experiment, so I am describing the variables as best as I can given the information in features_info.txt provided with the course project)

## Dataframe: human.activity.means
subject (column 1)
  integer
  identifies which subject participated in the test (values range 1-30)
  
activity (column 2)
  character
  description of test activity
  
The following variables give the average of the measurement for that individual subject doing this activity. 

General abbreviations used in measurement variables (all variables are num)
  Acc refers to accelerometer
  Gyro refers to gyroscope 
  Jerk refers to Jerk signals
  Mag stands for magnitute
  XYZ refer to the 3-axial signals in the X, Y and Z directions, respectively 

timeBodyAcc.mean.X (column 3)
  numeric
	Mean of time domain signals with body acceleration signal in x direction

timeBodyAcc.mean.Y (column 4)
	numeric
	Mean of time domain signals with body acceleration signal in y direction

timeBodyAcc.mean.Z (column 5)
	numeric
	Mean of time domain signals with body acceleration signal in z direction

timeBodyAcc.std.X (column 6)
	numeric
	Standard deviation of time domain signals with body acceleration signal in x direction

timeBodyAcc.std.Y (column 7)
	numeric
	Standard deviation of time domain signals with body acceleration signal in y direction

timeBodyAcc.std.Z (column 8)
	numeric
	Standard deviation of time domain signals with body acceleration signal in z direction

timeGravityAcc.mean.X (column 9)
	numeric
	Mean of time domain signals with gravity acceleration signal in x direction

timeGravityAcc.mean.Y (column 10)
	numeric
	Mean of time domain signals with gravity acceleration signal in y direction

timeGravityAcc.mean.Z (column 11)
	numeric
	Mean of time domain signals with gravity acceleration signal in z direction

timeGravityAcc.std.X (column 12)
	numeric
	Standard deviation of time domain signals with gravity acceleration signal in x direction

timeGravityAcc.std.Y (column 13)
	numeric
	Standard deviation of time domain signals with gravity acceleration signal in y direction

timeGravityAcc.std.Z (column 14)
	numeric
	Standard deviation of time domain signals with gravity acceleration signal in z direction

timeBodyAccJerk.mean.X (column 15)
	numeric
	Mean of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in x direction

timeBodyAccJerk.mean.Y (column 16)
	numeric
	Mean of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in y direction

timeBodyAccJerk.mean.Z (column 17)
	numeric
	Mean of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in z direction

timeBodyAccJerk.std.X (column 18)
	numeric
	Standard deviation of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in x direction

timeBodyAccJerk.std.Y (column 19)
	numeric
	Standard deviation of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in y direction

timeBodyAccJerk.std.Z (column 20)
	numeric
	Standard deviation of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in z direction

timeBodyGyro.mean.X (column 21)
	numeric
	Mean of time domain signals with in x direction

timeBodyGyro.mean.Y (column 22)
	numeric
	Mean of time domain signals with in y direction

timeBodyGyro.mean.Z (column 23)
	numeric
	Mean of time domain signals with in z direction

timeBodyGyro.std.X (column 24)
	numeric
	Standard deviation of time domain signals with in x direction

timeBodyGyro.std.Y (column 25)
	numeric
	Standard deviation of time domain signals with in y direction

timeBodyGyro.std.Z (column 26)
	numeric
	Standard deviation of time domain signals with in z direction

timeBodyGyroJerk.mean.X (column 27)
	numeric
	Mean of time domain signals with applying Fast Fourier Transform (FFT) in x direction

timeBodyGyroJerk.mean.Y (column 28)
	numeric
	Mean of time domain signals with applying Fast Fourier Transform (FFT) in y direction

timeBodyGyroJerk.mean.Z (column 29)
	numeric
	Mean of time domain signals with applying Fast Fourier Transform (FFT) in z direction

timeBodyGyroJerk.std.X (column 30)
	numeric
	Standard deviation of time domain signals with applying Fast Fourier Transform (FFT) in x direction

timeBodyGyroJerk.std.Y (column 31)
	numeric
	Standard deviation of time domain signals with applying Fast Fourier Transform (FFT) in y direction

timeBodyGyroJerk.std.Z (column 32)
	numeric
	Standard deviation of time domain signals with applying Fast Fourier Transform (FFT) in z direction

timeBodyAccMag.mean (column 33)
	numeric
	Mean of time domain signals with body acceleration signal (magnitude) in

timeBodyAccMag.std (column 34)
	numeric
	Standard deviation of time domain signals with body acceleration signal (magnitude) in

timeGravityAccMag.mean (column 35)
	numeric
	Mean of time domain signals with gravity acceleration signal (magnitude) in

timeGravityAccMag.std (column 36)
	numeric
	Standard deviation of time domain signals with gravity acceleration signal (magnitude) in

timeBodyAccJerkMag.mean (column 37)
	numeric
	Mean of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) (magnitude) in

timeBodyAccJerkMag.std (column 38)
	numeric
	Standard deviation of time domain signals with body acceleration signal applying Fast Fourier Transform (FFT) (magnitude) in

timeBodyGyroMag.mean (column 39)
	numeric
	Mean of time domain signals with (magnitude) in

timeBodyGyroMag.std (column 40)
	numeric
	Standard deviation of time domain signals with (magnitude) in

timeBodyGyroJerkMag.mean (column 41)
	numeric
	Mean of time domain signals with applying Fast Fourier Transform (FFT) (magnitude) in

timeBodyGyroJerkMag.std (column 42)
	numeric
	Standard deviation of time domain signals with applying Fast Fourier Transform (FFT) (magnitude) in

freqBodyAcc.mean.X (column 43)
	numeric
	Mean of frequency domain signals with body acceleration signal in x direction

freqBodyAcc.mean.Y (column 44)
	numeric
	Mean of frequency domain signals with body acceleration signal in y direction

freqBodyAcc.mean.Z (column 45)
	numeric
	Mean of frequency domain signals with body acceleration signal in z direction

freqBodyAcc.std.X (column 46)
	numeric
	Standard deviation of frequency domain signals with body acceleration signal in x direction

freqBodyAcc.std.Y (column 47)
	numeric
	Standard deviation of frequency domain signals with body acceleration signal in y direction

freqBodyAcc.std.Z (column 48)
	numeric
	Standard deviation of frequency domain signals with body acceleration signal in z direction

freqBodyAccJerk.mean.X (column 49)
	numeric
	Mean of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in x direction

freqBodyAccJerk.mean.Y (column 50)
	numeric
	Mean of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in y direction

freqBodyAccJerk.mean.Z (column 51)
	numeric
	Mean of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in z direction

freqBodyAccJerk.std.X (column 52)
	numeric
	Standard deviation of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in x direction

freqBodyAccJerk.std.Y (column 53)
	numeric
	Standard deviation of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in y direction

freqBodyAccJerk.std.Z (column 54)
	numeric
	Standard deviation of frequency domain signals with body acceleration signal applying Fast Fourier Transform (FFT) in z direction

freqBodyGyro.mean.X (column 55)
	numeric
	Mean of frequency domain signals with in x direction

freqBodyGyro.mean.Y (column 56)
	numeric
	Mean of frequency domain signals with in y direction

freqBodyGyro.mean.Z (column 57)
	numeric
	Mean of frequency domain signals with in z direction

freqBodyGyro.std.X (column 58)
	numeric
	Standard deviation of frequency domain signals with in x direction

freqBodyGyro.std.Y (column 59)
	numeric
	Standard deviation of frequency domain signals with in y direction

freqBodyGyro.std.Z (column 60)
	numeric
	Standard deviation of frequency domain signals with in z direction

freqBodyAccMag.mean (column 61)
	numeric
	Mean of frequency domain signals with body acceleration signal (magnitude) in

freqBodyAccMag.std (column 62)
	numeric
	Standard deviation of frequency domain signals with body acceleration signal (magnitude) in
