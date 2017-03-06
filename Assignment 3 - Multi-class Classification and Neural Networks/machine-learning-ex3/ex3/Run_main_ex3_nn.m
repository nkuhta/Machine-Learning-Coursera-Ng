%% Machine Learning Online Class - Exercise 3 | Part 2: Neural Networks

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

%Setup input parameters
input_layer_size = 400;  %  20x20 input image of digits
hidden_layer_size = 25;  %  25 hidden units
num_labels = 10;         %  10 labels (1,2,...10), note 0=10 here

####################################################################
###########  Part 1:  Loading and Visualizing Data  ################
####################################################################

%  loading and visualising the handwritten digit data

%  Load Training Data
fprintf('Loading and Visualizing Data ...\n');

load('ex3data1.mat');
m = size(X,1);

%  Randomly select 100 data points to display
sel = randperm(size(X,1));
sel = sel(1:100);

displayData(X(sel,:));

fprintf("Program paused: press enter to load NN parameters\n");
pause;

####################################################################
########  Part 2:  Loading Neural Network Parameters  ##############
####################################################################

fprintf('\nLoading Saved Neural Network Parameters ...\n');

%  Load the weights into variables Theta1 and Theta2
load('ex3weights.mat');


####################################################################
#########  Part 3:  Implement and Predict Neural Net  ##############
####################################################################

%  After training the neural net (Theta1,Theta2) waitbar
%  Use that info to predict handwriting labels
%  

pred = predict(Theta1,Theta2,X);

fprintf('\nTraining Set Accuracy: %f\n',mean(double(pred==y))*100);

fprintf('Program paused. Press enter to continue.\n');
pause;

%  To give you an idea of the network's output, you can also run
%  through the examples one at the a time to see what it is predicting.

%  Randomly permute examples
rp = randperm(m);

for i = 1:m
    % Display 
    fprintf('\nDisplaying Example Image\n');
    displayData(X(rp(i), :));

    pred = predict(Theta1, Theta2, X(rp(i),:));
    fprintf('\nNeural Network Prediction: %d (digit %d)\n', pred, mod(pred, 10));
    
    % Pause with quit option
    s = input('Paused - press enter to continue, q to exit:','s');
    if s == 'q'
      break
    end
end




