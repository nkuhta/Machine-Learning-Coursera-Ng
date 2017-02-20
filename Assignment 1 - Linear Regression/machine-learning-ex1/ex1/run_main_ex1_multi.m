%% Machine Learning Online Class
%  Exercise 1: Linear regression with multiple variables
%
%  Instructions
%  ------------
% 
%  This file contains code that helps you get started on the
%  linear regression exercise. 
%
%  You will need to complete the following functions in this 
%  exericse:
%
%     gradientDescentMulti.m
%     computeCostMulti.m
%     featureNormalize.m
%     normalEqn.m
%
%  For this part of the exercise, you will need to change some
%  parts of the code below for various experiments (e.g., changing
%  learning rates).
%

%% Initialization
%% Clear and Close Figures
clear ; close all; clc

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%   Part 1:  Feature Normalization  %%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

fprintf('Loading data ...\n');

%% Load Data
data = load('ex1data2.txt');
%  x_column1 = house size in ft^2, x_column2 = # of Bedrooms
x = data(:, 1:2);
%  home price in dollars
y = data(:, 3);

%  number of training datapoints 
m = length(y);

fprintf('First 10 examples of the dataset: \n');
fprintf('x=[%0.f %0.f], y= %.0f \n',[x(1:10,:) y(1:10,:)]');

fprintf('Program Paused:  Press Enter to continue.... \n');
pause;

% Scale feature to zero mean
fprintf('Normalizing Features... \n');

% find the mean normalized x's and the mean(x) and std(x)
[x mu sigma] = featureNormalize(x);

%  Add intercept column of 1's to x

x=[ones(m,1),x];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%   Part 2:  Gradient Descent  %%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

fprintf('Running gradient descent...\n');

%  Gradient Descent Parameters
alpha = .9;
num_iters=60;
alpha_vals=[.1,.5,.9];

%  Initiate theta and run gradient descent
theta = zeros(3,1);
[theta,J_history1] = gradientDescentMulti(x,y,theta,alpha_vals(1),num_iters);
theta = zeros(3,1);
[theta,J_history2] = gradientDescentMulti(x,y,theta,alpha_vals(2),num_iters);
theta = zeros(3,1);
[theta,J_history3] = gradientDescentMulti(x,y,theta,alpha_vals(3),num_iters);
theta = zeros(3,1);
[theta,J_history] = gradientDescentMulti(x,y,theta,alpha,num_iters);

%  Plot the convergence graph
figure;
plot(1:numel(J_history1),J_history1,'-r','Linewidth',2);
xlabel('Number of Iterations');
ylabel('Cost Function J');
hold on;
plot(1:numel(J_history2),J_history2,'-g','Linewidth',2);
plot(1:numel(J_history3),J_history3,'-b','Linewidth',2);
hold off;

#figure;
#plot(1:numel(J_history),J_history,'-r','Linewidth',2);

%  Display the Gradient Descent's result
fprintf('Theta computed from gradient descent: \n');
fprintf('%f \n',theta);
fprintf('\n');

% Estimate the price of a 1650 sq-ft, 3 br house
% Recall that the first column of x is all-ones. Thus, it does
% not need to be normalized.
price = theta(1)+theta(2)*(1650-mu(1))/sigma(1)+theta(3)*(3-mu(2))/sigma(2);

fprintf(['Predicted price of a 1650 sq-ft, 3 br house ' ...
         '(using gradient descent):\n $%f\n'], price);

fprintf('Program paused. Press enter to continue.\n');
pause;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%   Part 3:  Normal Equation  %%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

fprintf('Solving with normal equations...\n');


%% Load Data
data = csvread('ex1data2.txt');
x = data(:, 1:2);
y = data(:, 3);
m = length(y);

% Add intercept term to X
x = [ones(m, 1) x];

% Calculate the parameters from the normal equation
theta = normalEqn(x, y);

% Display normal equation's result
fprintf('Theta computed from the normal equations: \n');
fprintf(' %f \n', theta);
fprintf('\n');


% Estimate the price of a 1650 sq-ft, 3 br house
% ====================== YOUR CODE HERE ======================
price = theta(1)+theta(2)*1650+theta(3)*3;


% ============================================================

fprintf(['Predicted price of a 1650 sq-ft, 3 br house ' ...
         '(using normal equations):\n $%f\n'], price);























