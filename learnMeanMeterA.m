%Ummay Habiba
%ML Final Project 
%This code pretains to Naive Bayes Portion of the Project
%This function calculates the mean of the Normalized Train Data
%Set.

function classMean=learnMeanMeterA(TrainMeterA,classNum)
 classIndex=(TrainMeterA(:,37)==classNum);
 %This changed which feature you are finding the mean for that matched the
 %class value.
 for i=1:36
  c=1;
classMean(i,c)=mean(TrainMeterA(classIndex,i));
 end
 classMean
end
