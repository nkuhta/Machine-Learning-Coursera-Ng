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

fprintf('\nCost at initial theta (zeros): %f\n', cost);
fprintf('Expected cost (approx): 0.693\n');
fprintf('\nGradient at initial theta (zeros): \n');
fprintf(' %f \n', grad);
fprintf('Expected gradients (approx):\n -0.1000\n -12.0092\n -11.2628\n');

# Compute and display cost and gradient for non-zero theta

#  initial test theta values 
test_theta=[-24; 0.2; 0.2];
#  Compute cost and gradient 
[cost grad] = costFunction(test_theta,x,y);

fprintf('\nCost at test theta: %f\n',cost);
fprintf('Expected cost (approx): 0.218\n');
fprintf('\nGradient at test theta: \n');
fprintf(' %f \n',grad);
fprintf('Expected gradients (approx):\n 0.043 \n 2.566 \n 2.647 \n');

fprintf('\n Program paused.  Press enter to continue \n');
pause;

##########################################################
########   Part 3 - Optimize using fminunc  ##############
##########################################################

#  Use fminunc to find the optimal theta values 

%  Set options for fminunc
options = optimset('GradObj','on','MaxIter',400);

%  Run fminunc to obtain optimal theta  
#  fminunc will return optimized theta and the cost

[theta, cost] = ...
  fminunc(@(t)(costFunction(t,x,y)),initial_theta,options);
  
%  print theta from fminunc
fprintf('\nCost at theta found by fminunc: %f\n',cost);
fprintf('Expected cost (approx):  0.203\n');
fprintf('\nfminunc theta: \n');
fprintf(' %f \n',theta);
fprintf('Expected theta (approx):\n');
fprintf(' -25.61\n 0.206\n 0.201\n');

%  Plot Decision Boundary

plotDecisionBoundary(theta,x,y);  


















