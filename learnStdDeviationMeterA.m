%Ummay Habiba
%ML Final Project 
%This code pretains to Naive Bayes Portion of the Project
%This function calculates the StdDeviation of the Normalized Train Data
%Set.

function classDev=learnStdDeviationMeterA(TrainMeterA,classNum)
 classIndex=(TrainMeterA(:,37)==classNum);
 %This changed which feature you are finding the mean for that matched the
 %class value. 
 c=1;
 for i=1:36;
classDev(i,1)=std(TrainMeterA(classIndex,i));
%Y=['The standard deviation for class ', num2str(classNum),' attribute number ' num2str(feat), ' is: ', num2str(classDev)];
%disp(Y)
 end
classDev;
end

 