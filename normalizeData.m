%Ummay Habiba
%ML Final Project 
%This code take in a your entire DataSet and normalizes the data set. 

function normalize =normalizeData(MeterA)  

Maxvaluefeat=max(MeterA(:,1:36), [], 1);
Minvaluefeat=min(MeterA(:,1:36), [], 1);
save('myFile','Maxvaluefeat', 'Minvaluefeat')
%Row
%valueOfA = zeros(3,36)
for i=1:87
    %Column
    for j=1:36
        Norm(i,j)= (MeterA(i,j)- Minvaluefeat(j))/(Maxvaluefeat(j)-Minvaluefeat(j)); 
    end
end
Norm;
save('myFile','Norm')
end

   





