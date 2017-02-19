%% Machine Learning Online Class - Exercise 2: Logistic Regression
%
%  Instructions
%  ------------
% 
%  This file contains code that helps you get started on the logistic
%  regression exercise. You will need to complete the following functions 
%  in this exericse:
%
%     sigmoid.m
%     costFunction.m
%     predict.m
%     costFunctionReg.m
%
%  For this exercise, you will not need to change any code in this file,
%  or any other files other than those mentioned above.
%

%% Initialization - clear variables, close all figures, clear command window
clear ; close all; clc

###############
#  Load Data ##
###############

#  Column 1 & 2 are exam scores and the third column is acceptance label (0 or 1)
data=load('ex2data1.txt');

x=data(:,[1,2]); y=data(:,3);

##########################################################
################   Part 1 - Plotting  ####################
##########################################################

fprintf(['Plotting data with + indicating (y=1) examples and o ' ...
             'indicating (y=0) examples.\n']);
             
plotData(x,y);             

%  Add Plot Labels and Legend
hold on;
xlabel('Exam 1 Score');
ylabel('Exam 2 Score');
legend('Admitted','Not Admitted');
hold off;

fprintf('Program paused:  Press enter to continue.\n');
pause;

##########################################################
#####   Part 2 - Compute Cost and Gradient  ##############
##########################################################

#  Cost and Gradient Descent for Logistic Regression

%  data (design) matrix size 
[m,n]=size(x);

%  Add the 1 column to x for the constant term
x=[ones(m,1) x];

%  Initial theta values
initial_theta=zeros(n+1,1);

%  Compute the cost and gradient
[cost grad] = costFunction(initial_theta,x,y);

fprintf('Cost at initial theta (zeros): %f\n', cost);
fprintf('Expected cost (approx): 0.693\n');
fprintf('Gradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);
fprintf('Expected gradients (approx):\n -0.1000\n -12.0092\n -11.2628\n');






















