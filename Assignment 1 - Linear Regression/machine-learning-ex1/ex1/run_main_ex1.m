%% Machine Learning Online Class - Exercise 1: Linear Regression

%  Instructions
%  ------------
% 
%  This file contains code that helps you get started on the
%  linear exercise. You will need to complete the following functions 
%  in this exericse:
%
%     warmUpExercise.m
%     plotData.m
%     gradientDescent.m
%     computeCost.m
%     gradientDescentMulti.m
%     computeCostMulti.m
%     featureNormalize.m
%     normalEqn.m
%
%  For this exercise, you will not need to change any code in this file,
%  or any other files other than those mentioned above.
%
% x refers to the population size in 10,000s
% y refers to the profit in $10,000s
%

%% Initialization - Clear all variables, close all figures, clear command window screen
clear ; close all; clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%   Part 1:  Basic Function  %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%  call the warmUpExercise.m function file

fprintf("Running warmUpExercise.m ...\n");
fprintf("5x5 Identity Matrix...\n");

%  Call the warmUpExercise.m file 
warmUpExercise()

fprintf("Progam Paused:  push enter to continue.\n");
pause;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%   Part 2:  Plotting  %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("Plotting ex1data1 Data...\n");

%  Load the data file 
data=load('ex1data1.txt');

%  x data
x=data(:,1);

%  y data
y=data(:,2);

%  length of dataset
m=length(y);

%  plot the x and y data with markers
plot(x,y,'o')

fprintf("Figure 1 is octave plot function\n");

%  Call the plotData.m function file
plotData(x,y)

fprintf("Figure 2 is the plotData function call.\n");
pause;

clear ; close all; clc















