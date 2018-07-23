%Ummay Habiba
%ML Final Project 
%This code pretains to Naive Bayes Portion of the Project
%This function calculates priors. 
%For my project I calculated the priors using the full dataset called
%MeterA. 
% calcPriors(MeterA,1);
%The prior for class 1 is: 0.4023
%calcPriors(MeterA,2);
%The prior for class 2 is: 0.5977

function prior=calcPriors(data,classNum)
 Allclasses = data(:,37);
  NumberofClass = sum(Allclasses==classNum);
  n = numel(Allclasses);
  prior= NumberofClass/n;
  X=['The prior for class ', num2str(classNum),' is: ', num2str(prior)];
disp(X)
 end
 

