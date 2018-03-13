#Codebook


Variable list and descriptions for tidy_Data.txt

subject - The ID of the test subject
activity - The type of activity performed when the corresponding measurements were taken
Mean-X  --TbodyACC-mean()-X: the average of the body
Mean-Y
Mean-Z
Std-X
Std-Y
Std-Z



str(tidy_Data)
'data.frame':	180 obs. of  8 variables:
 $ subject : Factor w/ 30 levels "1","2","3","4",..: 1 2 3 4 5 6 7 8 9 10 ...
 $ activity: Factor w/ 6 levels "WALKING","WALKING_UPSTAIRS",..: 1 1 1 1 1 1 1 1 1 1 ...
 $ Mean-X  : num  0.279 0.276 0.275 0.279 0.28 ...
 $ Mean-Y  : num  -0.0163 -0.0186 -0.0163 -0.0148 -0.014 ...
 $ Mean-Z  : num  -0.112 -0.106 -0.112 -0.111 -0.107 ...
 $ Std-X   : num  -0.278 -0.424 -0.351 -0.441 -0.276 ...
 $ Std-Y   : num  0.1111 -0.0781 -0.0706 -0.0788 0.0733 ...
 $ Std-Z   : num  -0.263 -0.425 -0.388 -0.586 -0.449 ...