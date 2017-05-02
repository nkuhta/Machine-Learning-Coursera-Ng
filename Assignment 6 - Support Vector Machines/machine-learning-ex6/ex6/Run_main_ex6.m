%% Machine Learning Online Class
%  Exercise 6 | Support Vector Machines
%
%  Instructions
%  ------------
% 
%  This file contains code that helps you get started on the
%  exercise. You will need to complete the following functions:
%
%     gaussianKernel.m
%     dataset3Params.m
%     processEmail.m
%     emailFeatures.m
%
%  For this exercise, you will not need to change any code in this file,
%  or any other files other than those mentioned above.
%

%% Initialization
clear ; close all; clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%  Part 1: Loading and Visualizing Data    %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  load and plot the dataset 

fprintf("loading and visualizing data ...\n");

%  ex6data1:  X,y parameters 
load('ex6data1.mat');

%  plot training data
plotData(X,y);

fprintf('Program paused:  press key to continue.\n');
pause;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%  Part 2: Training Linear SVM    %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%  Train the linear SVM on the ex6data1 dataset 
%  plot the decision boundary

fprintf('\nTraining Linear SVM ...\n');

%  try changing the C parameter (ie. try C = 1-1000)
C = 1;
model = svmTrain(X,y,C,@linearKernel,1e-3,20);
visualizeBoundaryLinear(X,y,model);


fprintf('program paused: press key to continue.\n');
pause; 























