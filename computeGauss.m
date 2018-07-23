%Ummay Habiba
%ML Final Project 
%%This code pretains to Naive Bayes Portion of the Project
%This function calculates the Gauss function. 
%computeGauss(1.023252997,LearnMean,StdDev,))
function gaussian=computeGauss(X,LearnMean,StdDev,ClassNum) 
for i=1:36
    M=LearnMean(i,ClassNum);
    S=StdDev(i,ClassNum);
    gaussian=exp(-(X-M).^2./(2*S.^2))./(sqrt(2*pi).*S);
    x=gaussian;
    c=1;
    VectGauss(i,c)=x
end 
