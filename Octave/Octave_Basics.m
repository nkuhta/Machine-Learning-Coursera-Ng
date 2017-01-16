
######################################
#######  Basic Math in Octave  #######
######################################

#  addition
a=5+6;

#  subtraction
b=3-2;

#  multiplication
c = 5*8;

#  division
d=1/2;

#  raising to power 
p=2^6;

%  output
%a =  11
%b =  1
%c =  40
%d =  0.50000
%p =  64

#######################################
#######  Basic Logic in Octave  #######
#######################################

%  == is the logical T/F operator 
%  == produces 1 for T, and 0 for F
1==2;
   %ans = 0

%  ~= is the not equal operator
1~=2;
  %ans = 1
  
%  && is the and operator, ie. A && B True if A,B are true 
1&&0;
  %ans = 0
  
%  || is the or operator, ie. A || B is true if A or B is true
1 || 0;
  %ans = 1
  
%  xor(A,B) is the exclusive or operator on A and B
xor(1,0);
  %ans = 1  
  
#######################################
########  Variable Display    #########
#######################################  
  
#  Note a semicolon supresses output  
  
a=pi;

#  display a variable
disp(a);  
  #3.1416

#  display 2 decimals  
disp(sprintf('2 decimals: %0.2f',a));
  #2 decimals: 3.14  
  
#  display 6 decimals
disp(sprintf('6 decimals: %0.6f',a));
  #6 decimals: 3.141593  
  
format long
disp(a);
  # 3.14159265358979
format short
disp(a); 
  # 3.1416 
 
#######################################
########  Vectors/Matrices    #########
####################################### 
 

A=[1 2;3 4;5 6];
disp(A);
#  1   2
#  3   4
#  5   6

%  row vector
v=[1 2 3];
  #1  2  3

#  column vector
v=[1;2;3];
#1
#2
#3

#  row vector from 1 to 2 in steps of 0.1
t=[1:0.1:2];
  # 1, 1.1, 1.2,.......1.9, 2.0

#  integer row vector from 1 to 6  
v=1:6;
  #  1   2   3   4   5   6
  
#  2x3 matrix of ones
ones(2,3);
  #   1   1   1  
  #   1   1   1  
  
c=2*ones(2,3);
  #   2   2   2  
  #   2   2   2  

#  vector/matrix of zeros
w=zeros(1,3);
  #  0   0   0

#  random matrix/vector  
w=rand(1,3);  
  #   0.064031   0.763642   0.072684

%  3x3 random matrix (values between 0 and 1)
rmat=rand(3,3);
%   0.55075   0.65376   0.35113
%   0.52115   0.54614   0.19538
%   0.91395   0.76627   0.46741

#  Gaussien random numbers with mean = 0 and SD = 1
w=randn(1,3);
  #  -1.33762  -0.51750  -1.09536

%  gaussian distribution with mean=-6 and SD=sqrt(10)
w=-6+sqrt(10)*randn(1,1000);  
  
#  plot the histogram with 50 slices  
hist(w,50);  
  
%  5x5 identity matrix  
eye(5)  
  
#######################################
##########  Help in Octave  ###########
#######################################  
  
#  type help then the topic of interest as shown below  
help rand

  
  
  
  
  