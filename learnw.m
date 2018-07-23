%Ummay Habiba
%ML Final Project 
%Takes in trainData, the number of loops you want to perform and, 
%the epsilon which is the step size and b. It produces randomly generated 
%weights. This function trains the data using sigmoid and the output is a vector weights. 


function logistic = learnw (trainData,nLoops,epsilon,b)

  [row, col] = size(trainData);
   finalw =  randi ( [-100000  100000], col-1, 1 );
   %rand( (col-1),1)
   for g = 1:nLoops
    for i = 1:row
      currentw = finalw;
     % Calculate sigmoidLikelihood
     x=trainData(i,:);
     w=currentw;
     trans = 0;
     for j = 1:(length(x)-1)
    trans = trans+ (x(j)*w(j));
     end
  trans = trans + b;
  tempy  = 1/(1+exp(-1*trans));
  if (x(1) == 0)
    tempy  = 1-tempy ;
  end
  
  
      %  gradient ascent
      for feat=1:(length(finalw)-1) 

          currentw(feat) = currentw(feat)+(epsilon*trainData(i,feat)*(trainData(i,col)-tempy));
      end
      currentw(length(finalw)) = currentw(length(finalw))+epsilon*(trainData(i,col)-tempy);
      finalw = currentw; 
     logistic=currentw;
    end
  end;