
######################################
#######  Matrix Computation  #########
######################################

A=[1 2;3 4;5 6];

B=[11 12;13 14;15 16];

C=[1 1;2 2];

%  Matrix Multiplication - performed by the * operator
%  3x2 times 2x2 = 3x2 matrix
A*C;
  %ans =
  %    5    5
  %   11   11
  %   17   17

%  Element wise muliplication - performed by the .* operator
A.*B;  
  %ans =
  %   11   24
  %   39   56
  %   75   96

%  Square all elements of A   
A.^2;  
  %ans =
  %   1     4
  %   9    16
  %  25    36
  
%  column vector
v=[1;2;3];

%  element wise division
1./v;  
  %ans =
  %
  %   1.00000
  %   0.50000
  %   0.33333  
  
%  element wise division also works on Matrices 
1./A;  
  %  ans =
  %   1.00000   0.50000
  %   0.33333   0.25000
  %   0.20000   0.16667

%  element wise logarithm 
log(v);  
  %  ans =
  %
  %   0.00000
  %   0.69315
  %   1.09861

%  element wise exponentiation
exp(v);  
  %  ?ans =
  %
  %    2.7183
  %    7.3891
  %   20.0855

%  element wise absolute value
abs([-1;2;-3]);
  %  ans =
  %  1
  %  2
  %  3

  %  v + ones(3,1) - increment each element by one
v+ones(length(v),1);  %  = v+1
  %ans =
  %  2
  %  3
  %  4

%  Transpose ' operator 

A';    
  %ans =
  %  1   3   5
  %  2   4   6

%  1 by 4 vector  
a=[1 15 2 0.5];

%  max array value
val=max(a);
  %val =  15

%  numeric and index value of max(a) 
[val,ind]=max(a);
  %val = 15
  %ind = 2

%  warning max(A) does column wise maximum
max(A);  
    % 5   6
  
%  which elements of a are less than 3?  (Logical Class)   
a < 3;  
  %  1  0  1  1  
  
%  which index values satisfy a < 3
find(a<3);  
  %     1   3   4

%  rows and columns and diagonals add up to same value  
A = magic(3);  
  %  A =
  %  8   1   6
  %  3   5   7
  %  4   9   2

%  find all (row,column) combinations where A is greater than or equal to 7  
[r,c]=find(A>=7);
  %r = 
  %  1
  %  3
  %  2
  %  
  %c = 
  %  1
  %  2
  %  3
  %    So [r,c]= [1,1] and [3,2] and [2,3] 

######################################
#######  Combining Elements  #########
######################################  
  
%  Sum all the elements of a vector  
sum(a);
  %ans =  18.500

%  multiply all elements of a vector
prod(a);
  %ans =  15
  
%  round each element down to next integer
floor(a);  
  %    1   15    2    0

%  round each element down to next integer
ceil(a);  
  %    1   15    2    1

%  row wise maximum values of magic matrix A  
max(A,[],2);
  %  ans = 
  %    8
  %    7
  %    9

%  max of all matrix elements   
max(max(A));  
  %ans =  9  

%  max of all matrix elements by first making one vector  
max(A(:));  
  %ans =  9  

A=magic(9);

%  column wise sum
sum(A,1);  
%   369   369   369   369   369   369   369   369   369

%  row wise sum
sum(A,2);
  %  369
  %  369
  %  369
  %  369
  %  369
  %  369
  %  369
  %  369
  %  369
  
%  diagonal sum 
sum(sum(A.*eye(9)));
  % ans =  369  

A=magic(3);

%  Inverse of A - really the psuedo inverse
pinv(A);

%  check the identity
A*pinv(A)


  
  