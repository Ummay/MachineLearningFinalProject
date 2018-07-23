%Ummay Habiba
%ML Final Project 
%This code pretains to Naive Bayes Portion of the Project 

%This function calculates the number correct from the NaiveBayes function.
 function percentCorrect=numCorrectMeterA(MeterATest, I2)
 numCorrect=0;
 for i=1:17
     if MeterATest(i,37)==I2(i,1);
         numCorrect=numCorrect+1;
     end;
 end;
 percentCorrect = numCorrect/size(MeterATest,1);