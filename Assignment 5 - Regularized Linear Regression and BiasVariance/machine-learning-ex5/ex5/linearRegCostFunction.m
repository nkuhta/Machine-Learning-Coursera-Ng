function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%

%  cost without lambda
J=sum((X*theta-y).^2)/2/m;

%  regularization included
  J = J + lambda*theta(2)^2/2/m;

%  first gradient term (constant)
grad(1) = 1/m*sum(X*theta-y);

% second gradient term (linear term with lambda regularization)
grad(2) = 1/m*sum((X*theta-y).*X(:,2))+lambda/m*theta(2);




% =========================================================================

grad = grad(:);

end
