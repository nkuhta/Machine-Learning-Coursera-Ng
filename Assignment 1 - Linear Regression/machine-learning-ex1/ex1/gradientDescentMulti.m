function [theta, J_history] = gradientDescentMulti(x, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %

    #  first method
    #theta=theta-(alpha/m*(x*theta-y)'*x)';
    
    #  second method (use only one transpose)
    theta=theta-(alpha/m)*x'*(x*theta-y);
    
    
    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(x, y, theta);

end

end
