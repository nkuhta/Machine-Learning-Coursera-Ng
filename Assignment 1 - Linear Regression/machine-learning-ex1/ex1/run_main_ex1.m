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

%  x data (population in 10k units)
x=data(:,1);

%  y data (Revenue in 10k dollars units)
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

close all; clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%########%%%%
%%%%%%%%%%%   Part 3:  Gradient Descent  %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf("Running Gradient Descent ...\n");

#  add a column of 1's to the ex1data1 x data (comma separated columns)
x=[ones(m,1),data(:,1)]; 

%  coefficient fitting parameters initialization
theta=zeros(2,1);

%  Gradient Descent Parameters
iterations = 20000;
alpha = 0.001;

%  compute and display the initial cost
fprintf("Initial Cost...\n");
computeCost(x,y,theta)

%%%%%%%%%%%%
%%%%%%%%%%%%

%  Run the Gradient Descent
theta = gradientDescent(x,y,theta,alpha,iterations);

%  print theta to the screen
fprintf("Theta found by gradientDescent:  ");
fprintf('%f %f \n',theta(1),theta(2));

%  Plot the linear fit using theta
hold on;  %  keep previous plot visible
%  plot training data
plot(x(:,2),y,'o')
%  plot x vs. hypothesis after theta was optimized using linear regression 
plot(x(:,2),x*theta,'-')
%  label axes
xlabel("Population (in 10K units)");
ylabel("Revenue (in $10K units)");
%  create legend
legend('Training Data','Linear Regression',"location",'east')
hold off  %  no more overlay plots on this figure

%  predict revenue for population values of 35k and 70k
predict1=[1, 3.5]*theta;
predict2=[1, 7]*theta;

%  print out the predicted profit values
fprintf("For population = 35,000, we predict a profit of %f\n",...
predict1*10000);
fprintf('For population = 70,000, we predict a profit of %f\n',...
predict2*10000);

fprintf('Program Paused: Press Enter To Continue\n');
pause;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%########%%%%%%%%%%
%%%%%%%%   Part 4:  Visualizing Cost Function J  %%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('Visualizing J(theta_0,theta_1) ...\n');

%  Grid over which we will calculate J
theta0_vals = linspace(-10,10,100);
theta1_vals = linspace(-1,4,100);

%  Initialize J_vals to a zero Matrix
J_vals = zeros(length(theta0_vals),length(theta1_vals));

%  fill out J_vals
for i=1:length(theta0_vals)
  for j=1:length(theta1_vals)
    
    t=[theta0_vals(i);theta1_vals(j)];
    J_vals(i,j) = computeCost(x,y,t);
    
  end
end

% Because of the way meshgrids work in the surf command, we need to 
% transpose J_vals before calling surf, or else the axes will be flipped
J_vals = J_vals';
% Surface plot
figure;
surf(theta0_vals, theta1_vals, J_vals)
xlabel('\theta_0'); ylabel('\theta_1');

% Contour plot
figure;

%  Plot J as 15 contours spaced (log scale) between 0.01 and 100
contour(theta0_vals,theta1_vals,J_vals,logspace(-2,3,20));
xlabel('\theta_0'); ylabel('\theta_1');
hold on;

plot(theta(1),theta(2),'rx','MarkerSize',10,'LineWidth',2);

fprintf('Program Finished and Paused: Press Enter Clear All\n');
pause;

clear all;clc;close all;

