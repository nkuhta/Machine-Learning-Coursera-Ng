%% Machine Learning Online Class - Exercise 3 | Part 1: One-vs-all

%  Instructions
%  ------------
%
%  This file contains code that helps you get started on the
%  linear exercise. You will need to complete the following functions
%  in this exericse:
%
%     lrCostFunction.m (logistic regression cost function)
%     oneVsAll.m
%     predictOneVsAll.m
%     predict.m
%
%  For this exercise, you will not need to change any code in this file,
%  or any other files other than those mentioned above.
%

%% Initialization
clear ; close all; clc

%  setup code parameters 
input_layer_size = 400;   %  20x20 input images of digits
num_labels = 10;          %  10 lables (1-10), note "0" maps to "10"


####################################################################
###########  Part 1:  Loading and Visualizing Data  ################
####################################################################

%  Data comes from 20x20 pixel array of handwriting samples 
%  Each of the 400 measurements represent a pixel intensity (in grayscale) 

#  Load the handwritten digit dataset
fprintf('Loading and Visualizing the Data ...\n');

%  Training data stored in X,y arrays, X is 5000x400, y is 5000x1
load('ex3data1.mat');

m=size(X,1);

% Randomly select 100 data points to display
rand_indices = randperm(m);
sel=X(rand_indices(1:100),:);

displayData(sel);

fprintf('Program paused: Press enter to continue to Logistic Regression \n');
pause;

####################################################################
###########  Part 2a:  Vectorize Logistic Regression  ##############
####################################################################

%  Use regularized logistic regression (vectorized)
%  Perform one-vs-all classification for the handwritten digit dataset

%  test the case for lrCostFunction()
fprintf('\nTesting lrCostFunction()\n');

theta_t = [-2;-1;1;2];
X_t = [ones(5,1) reshape(1:15,5,3)/10];
y_t = ([1;0;1;0;1]>=0.5);
lambda_t=3;

%  Compute cost J and corresponding gradient vector "grad"
[J grad] = lrCostFunction(theta_t, X_t, y_t, lambda_t);

fprintf('\nCost: %f\n', J);
fprintf('Expected cost: 2.534819\n');
fprintf('\nGradients:\n');
fprintf(' %f \n', grad);
fprintf('\nExpected gradients:\n');
fprintf(' 0.146561\n -0.548558\n 0.724722\n 1.398003\n');












