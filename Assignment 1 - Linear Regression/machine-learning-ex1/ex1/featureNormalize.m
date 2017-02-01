function [x_norm, mu, sigma] = featureNormalize(x)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
x_norm = x;
mu = zeros(1, size(x, 2));
sigma = zeros(1, size(x, 2));

% ====================== YOUR CODE HERE ======================
% Instructions: First, for each feature dimension, compute the mean
%               of the feature and subtract it from the dataset,
%               storing the mean value in mu. Next, compute the 
%               standard deviation of each feature and divide
%               each feature by it's standard deviation, storing
%               the standard deviation in sigma. 
%
%               Note that X is a matrix where each column is a 
%               feature and each row is an example. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       

%  Mean of all x data columns
mu=mean(x);

%  Standard Deviation of all y data columns
sigma=std(x);

%  normalized x values in vectorized format
x_norm=(x-mu)./sigma;

%  Calculate the normalized x values for each feature
%for i=1:size(x,2)
%  x_norm(:,i)=(x(:,i)-mu(i))/sigma(i);
%end


% ============================================================

end
