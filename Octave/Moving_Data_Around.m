
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
######  Loading/Saving Data  #########
######################################
  
%  Current directory path  
pwd;  
  %ans = C:\Users\Documents\Machine Learning\Machine-Learning-Coursera-Ng\Octave
  
%  Load Data file  
load ex1data1.txt  % or load('ex1data1.txt')

%  which variables are in current workspace
who; 
  %A         ans       ex1data1  sz        v 
 
%  97 rows and 2 columns in this dataset  
size(ex1data1); 
  %   97    2
  
%  Detailed variable view  
whos  
  %Variables in the current scope:
  %
  %   Attr Name          Size                     Bytes  Class
  %   ==== ====          ====                     =====  =====
  %        A             3x2                         48  double
  %        ans           1x2                         16  double
  %        ex1data1     97x2                       1552  double
  %        sz            1x2                         16  double
  %        v             1x4                         32  double
  %
  %Total is 208 elements using 1664 bytes  
  
%  clear a variable from the workspace
clear sz;
whos;  %  showing sz is not in memory any longer

%   assign the first 10 rows of the FIRST column to v
v1=ex1data1(1:10,1);
%   assign the first 10 rows of the SECOND column to v
v2=ex1data1(1:10,2);

%  save the v1 variable to a v1.mat file
save v1.mat v1;
%  you can 'clear ' all variables then load v1.mat to load variable again

%  save v1 as text(ASCII)
save v1.txt v1 -ascii

######################################
########  Manipulate Data  ###########
######################################

A=[1 2;3 4;5 6];
  %    1   2
  %    3   4
  %    5   6

%  Assign the 3rd row and second column entry of A  ie. A_{ij} = A_{32}
A(3,2);
  %ans =  6 

%  Get everything in the second row of A 
A(2,:);
  %   3   4

%  Get everything in the second column of A.   
A(:,2);
  %  2
  %  4
  %  6

%  Get everything from the first and third row of A  
A([1 3],:);
  %ans =
  %   1  2
  %   5  6

%  Assign a new 2nd column of A  
A(:,2) = [10;11;12]; 
  %A =
  %    1   10
  %    3   11
  %    5   12  
  
%  Append a new column vector to A  
A = [A,[100;101;102]];
  %A =
  %    1   10   100
  %    3   11   101
  %    5   12   102 

%  Put all elements of A into a single column vector
A(:);  
  %ans = 
  %
  %    1
  %    3
  %    5
  %   10
  %   11
  %   12
  %  100
  %  101
  %  102 
  
A=[1 2;3 4;5 6];
  %    1   2
  %    3   4
  %    5   6
B=[11 12;13 14;15 16];
  %    11   12
  %    13   14
  %    15   16

%  concatinate matrix A and B (append B to A column wise)  
C=[A B];  % or [A,B]
  %C =
  %    1    2   11   12  
  %    3    4   13   14
  %    5    6   15   16    

%  concatinate matrix A and B (append B to A row-wise due to ; ie. put at the bottom)    
C=[A;B];
  %C =
  %
  %    1    2
  %    3    4    
  %    5    6
  %   11   12
  %   13   14
  %   15   16   
  
  
  