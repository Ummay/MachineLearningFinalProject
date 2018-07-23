Ummay Habiba 
Machine Learning 
——————————————————————————————

normalize:
Takes in a data set and normalizes it with respect to the features.  ——————————————————————————————
Naive Bayes
——————————————————————————————
calcPriors:
Takes in a data set and the class and outputs the prior for that class. 

computeGauss:
Takes in a point x from the dataset and the StdDev data LearnMean data and classNum and outputs the Gaussian. 

learnMeanMeterA:
Takes the trainingData and class number set and returns the mean with respect to that specific class. 

learnStdDeviationMeterA:
Takes the trainingData set and class and returns the standard deviation with respect to that class. 

Naive_Bayes:
Takes in the testing data that learnMean data and StdDev data and outputs the probability of a point x from the testing data with respect to the mean and std dev for both class C1 and class C2 and then outputs the index of the largest probability. 

numCorrectMeterA:
This function output the percent correct from our naive bayes function when comparing the Naive Bayes output to the column of classes in the Testing Data. 

 
——————————————————————————————
Logistic Regression 
——————————————————————————————
learnw:
Takes in trainData, the number of loops you want to perform and, the epsilon which is the step size and b. It produces randomly generated weights. This function trains the data using sigmoid and the output is a vector weights. 

testLogistic:
Takes in a point X from our Testing data and weights from learnW to output a percent. 
Created to be used in NumCorrectlogistic

numCorrectlogistic:
Takes in trainData, testData, the number of loops and Epsilon and b to feed into first learnW which produces a weights vector and that feeds into testLogistic and produced the precent correct.

——————————————————————————————
Data Included 
——————————————————————————————
MeterA:
Total DataSet
 NormMeterA:
The entire normalized data set.
TrainMeterA:
The set of normalized training data 
MeterATest:
The set of normalized testing data
LearnMean:
Data file of the learned means 
StdDev:
Data file of learned standard deviations 
LogisticTrain:
Training data for logistic function with classes C1 changes to 0 and classes C2 changed to 1. 
LogisticTest:
Testing data for logistic. With classes C1 changed to 0 and classes C1 changed to 1. 





