
%  Note the indentation does not matter, but it's a good habit for readable code

######################################
############  For Loops  #############
######################################

v=zeros(10,1);

for i=1:10,
  v(i)=2^i;
end 
    %v =
    %      2
    %      4
    %      8
    %     16
    %     32
    %     64
    %    128
    %    256
    %    512
    %   1024

%  You can also create an index array to send to for statement
indices=1:10;

for i=indices,
  v(i)=2^i;
end

######################################
###########  While Loops  ############
######################################

i=1;

while i <= 5,
  v(i)=100;
  i=i+1;
end;

%  This overwrites the first 5 v(i) elements with 100 
    %v=
    %    100
    %    100
    %    100
    %    100
    %    100
    %     64
    %    128
    %    256
    %    512
    %   1024

i=1;

while true,
  v(i)=999;
  i=i+1;
  if i==6,
    break
   end;
 end;  
  
    %v =
    %    999
    %    999
    %    999
    %    999
    %    999
    %     64
    %    128
    %    256
    %    512
    %   1024

######################################
###########  If Statement  ###########
######################################

%  replace 1st element of v array shown above with 2.  
v(1)=2;

if v(1)==1,
    disp('The value is 1');
  elseif v(1)==2,
      disp('The value is 2');
    else 
      disp('The value is not 1 or 2');
end;

######################################
############  Functions  #############
######################################

function y = squareThisNumber(x)
  y=x^2;
endfunction
  
function [y1,y2] = squareAndCubeThisNumber(x)
  y1=x^2;
  y2=x^3;
endfunction

squareThisNumber(5);
[a,b]=squareAndCubeThisNumber(5);


%  Cost function example 

%  Design matrix (ones then the x values)
x=[1 1;1 2;1 3];
  %x =
  %
  %   1   1
  %   1   2
  %   1   3

%  output y value matrix 
y=[1;2;3];
  %y =
  %
  %   1
  %   2
  %   3

%  coefficient array  
theta=[0;0.5];

function J = costFunctionJ(x,y,theta)
  %  x is the design matrix containing training examples
  %  y is the class labels
  
  %  number of training examples
    m=size(x,1); 
  %  predictions of hypothesis on all m 
    predictions=x*theta;
  
  %  squared error
    sqrErrors = (predictions-y).^2;
    
    J=1/(2*m)*sum(sqrErrors);

endfunction


j=costFunctionJ(x,y,theta)
  































