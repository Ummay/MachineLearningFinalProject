%Ummay Habiba
%ML Final Project 
%This code pretains to Naive Bayes Portion of the Project

function classify =Naive_Bayes(MeterATest,LearnMean,StdDev)    

%i corresponds to the row
for i=1:17
    new=0;
    %j corresponds to the column
    for j=1:36
        X=MeterATest(i,j);
        M=LearnMean(j,1);
        S=StdDev(j,1);
        ProbXgivenClass=log(exp(-(X-M).^2./(2*S.^2))./(sqrt(2*pi).*S));
        new=(new+ProbXgivenClass)*.60;
        vectC1(i,1)=new;
    end
    
    %y=['The prob of X at row' ,num2str(j), 'and col',  num2str(i), 'and class ', num2str(ClassNum),' is: ', num2str(new)];
    %disp(y)
end
vectC1;


for i=1:17
    new=0;
    %j corresponds to the column
    for j=1:36
        X=MeterATest(i,j);
        M=LearnMean(j,2);
        S=StdDev(j,2);
        ProbXgivenClass=log(exp(-(X-M).^2./(2*S.^2))./(sqrt(2*pi).*S));
        new=(new+ProbXgivenClass) *.40;
        vectC2(i,1)=new;
    end
    
   
end
vectC2;

finalvect=[vectC1 vectC2]
[MaxvalueProb Index]=max(finalvect(:,:), [], 2)
save('myFile','Index')
end

