function [J, grad] = costFunctionReg(theta, x, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

%  Squared theta term
theta_squared = theta.*theta;

%  Cost function, with regularized lambda term
J = -(1/m)*(y'*log(sigmoid(x*theta))+(1-y)'*log(1-sigmoid(x*theta))) ...
     + lambda/(2*m)*sum(theta_squared(2:length(theta_squared)));
     % note the theta_0 term is not regularized, ie. sum starts at 2. 

%  Gradient without correction
grad = (1/m)*x'*(sigmoid(x*theta)-y);

for i=2:length(grad)
     %  add regularization correction terms, note no constant theta correction
     grad(i)=grad(i)+lambda/m*theta(i);
     
end


% =============================================================

end
