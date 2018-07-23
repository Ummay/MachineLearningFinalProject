%Ummay Habiba
%ML Final Project 
%Takes in a point X from our Testing data and weights from learnW to output a percent. 
%Created to be used in NumCorrectlogistic


function PercentCorrect = testLogistic (x,w,b)
  [row, col] = size(x);
  for i = 1:row
    labels(i) = 0;
    trans = 0;
    for n = 1:(col-1)
      trans = trans + (x(i,n)*w(n));
    end
    trans = trans + b;
    if trans> 0
      labels(i) = 1;
    end
  end
   
  correctGuess = 0;
  for i = 1:row
    if x(i,col) == labels(i)
      correctGuess = correctGuess + 1;
    end
  end
  PercentCorrect = correctGuess/row;
  
  
