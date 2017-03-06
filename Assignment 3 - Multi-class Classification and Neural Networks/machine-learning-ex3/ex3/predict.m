function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly 
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a 
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% Add ones to the X data matrix
X = [ones(m, 1) X];

%  neural network input vector
a1 = X;

%  layer 2 nn vector
z2 = a1*Theta1';
a2 = sigmoid(z2);

% Add ones to the a2 data matrix
a2 = [ones(m, 1) a2];

% layer 3 (prediction) nn vectors 
z3 = a2*Theta2';
a3 = sigmoid(z3);


%  Tot_Prob Matrix = a3 matrix (5000 by 10 matrix)  
Tot_Prob=a3;

%  p = index value for maximum probability for each Tot_Prob input row
%  p = neural network predicted output array
[prob,p] = max(Tot_Prob,[],2);


% =========================================================================


end
