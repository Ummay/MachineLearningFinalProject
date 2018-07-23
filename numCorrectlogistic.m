%Ummay Habiba
%ML Final Project 
% Takes in trainData, testData, the number of loops and Epsilon and b to feed 
%into first learnW which produces a weights vector and that feeds into 
%testLogistic and produced the precent correct.

function PerentCorrect = numCorrectlogistic(trainData,testData,nLoops,epsilon,b)
%w stands for the weights 
  w = learnw(trainData,nLoops,epsilon,b);
  PercentCorrect =  testLogistic (testData,w,b)
  
