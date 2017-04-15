function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

%  column average of X
mu = mean(X);
%  subtract the column mean from each X value
X_norm = bsxfun(@minus, X, mu);

%  column standard deviation of mean normalized X
sigma = std(X_norm);
%  normalize X_norm by the standard deviation
X_norm = bsxfun(@rdivide, X_norm, sigma);


% ============================================================

end
