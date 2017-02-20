%% Machine Learning Online Class - Exercise 2: Logistic Regression
%
%  Instructions
%  ------------
% 
%  This file contains code that helps you get started on the second part
%  of the exercise which covers regularization with logistic regression.
%
%  You will need to complete the following functions in this exericse:
%
%     sigmoid.m
%     costFunction.m
%     predict.m
%     costFunctionReg.m
%
%  For this exercise, you will not need to change any code in this file,
%  or any other files other than those mentioned above.
%

%% Initialization - clear variable values, close figures, clear command window
clear ; close all; clc
%  Load Data
data = load('ex2data2.txt');
%  First two columns are x value microchip test values
x = data(:,1:2); %x = data(:,[1,2]);
%  Result data
y = data(:,3);

%  plot the ex2data2 data set  
plotData(x,y);

%  Label the plots
hold on;

%  Labels and Legend
xlabel('Microchip Test 1');
ylabel('Microchip Test 2');

%  specify the legend
legend('y=1','y=0');
hold off;

################################################################
########   Part 1 - Regularized Logistic Regression  ###########
################################################################

%  Note mapFeature functions add column of ones
%  Add higher order polynomial features with mapFeature script
x=mapFeature(x(:,1),x(:,2));

% Intitialize theta fitting parameters, length of x columns
initial_theta = zeros(size(x,2),1);

%  Set Regularization parameter lambda to 1
lambda = 1;

%  Compute initial Cost and gradient for logistic regression 

[cost,grad] = costFunctionReg(initial_theta,x,y,lambda);

fprintf('Cost at initial theta (zeros): %f\n',cost);
fprintf('Expected cost (approx): 0.693\n');
fprintf('\nGradient a the initial theta (zeros) - first five values only:\n');
fprintf(' %f\n',grad(1:5));
fprintf('Expected gradients (approx) - first five values only:\n');
fprintf(' 0.0085\n 0.0188\n 0.0001\n 0.0503\n 0.0115\n');

%fprintf('\nProgram paused. Press enter to continue.\n');
%pause;

% Compute and display cost and gradient with non-zero theta
test_theta = ones(size(x,2),1);
[cost, grad] = costFunctionReg(test_theta, x, y, lambda);

fprintf('\nCost at test theta: %f\n', cost);
fprintf('Expected cost (approx): 2.13\n');
fprintf('\nGradient at test theta - first five values only:\n');
fprintf(' %f \n', grad(1:5));
fprintf('Expected gradients (approx) - first five values only:\n');
fprintf(' 0.3460\n 0.0851\n 0.1185\n 0.1506\n 0.0159\n');

%fprintf('\nProgram paused. Press enter to continue.\n');
%pause;
close all;
################################################################
#########   Part 2 - Regularization and Accuracies  ############
################################################################

%  higher order polynomials will be used
%  lambda regularization to prevents overfitting
%  now use fminunc to find optimal theta with regularization

%  Try lambda (0,1,10,100);

%  How does the decision boundary change when you vary lambda?
%  How does the accuracy vary? 

%  initial theta fitting parameters
initial_theta = zeros(size(x,2),1);

lambda=1;

%  Set Options
options = optimset('GradObj','on','MaxIter',400);

%  Optimize
#[theta,J] = ...
[theta,J,exit_flag] = ...
  fminunc(@(t)(costFunctionReg(t,x,y,lambda)),initial_theta,options);

%  plot countour where z = x*theta = 0 
plotDecisionBoundary(theta,x,y);

%  Label decision boundary plot
hold on;
xlabel('Microchip Test 1');
ylabel('Microchip Test 2');
legend('y=1','y=0','Decision Boundary');
hold off;

% compute the accuracy of our microchip test training set 

% array predicted y output array 
% based on sigmoid function output values for optimized theta
p=predict(theta,x);

fprintf('\nTraining set accuracy: %f\n', mean(double(p == y)) * 100);
fprintf('Expected accurary (with lambda =1 ): 83.1 (approx)\n');

fprintf('\nProgram paused. Press enter to clear all');
pause;
clc;close all;clear

