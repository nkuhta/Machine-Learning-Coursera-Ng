
######################################
##########  Matrix Basics  ###########
######################################

A=[1 2;3 4;5 6];
  %A =
  %
  %   1   2
  %   3   4
  %   5   6

#  Determine the dimensions of A
size(A);  
  %ans =
  %
  %   3   2  
    
sz=size(A);

#  the size is itself a 1 by 2 vector
size(sz);  
  %ans =
  %
  %   1   2

%  Get back the first dimension of A (the number of rows)
size(A,1);
  %ans =  3

%  Get back the second dimension of A (the number of columns)
size(A,2);
  %ans =  2  
  
v=[1 2 3 4];

#  gives the length of the longest dimension
length(v);  
  %ans =  4  

%  this is why length is usually used for vectors, it only gives longest dimension  
length(A);  
  %ans =  3  
  
######################################
##########  Loading Data  ############
######################################
  
%  Current directory path  
pwd  
  %ans = C:\Users\Documents\Machine Learning\Machine-Learning-Coursera-Ng\Octave
  
  
  