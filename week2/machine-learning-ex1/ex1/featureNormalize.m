function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

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

f1 = X(:,1);
s1 = sum(f1);
s11 = s1/(length(f1));
mu1 = s11;
f11 = f1 .-mu1;
f12 = f11.^2;
f13 = sum(f12);
f14 = f13/length(f1);
f15 = sqrt(f14);
sigma1 = f15;
p = (f11)/sigma1;
f2 = X(:, 2);
s2 = sum(f2);
s21 = s2/(length(f2));
mu2 = s21;
f21 = f2 .-mu2;
f22 = f21.^2;
f23 = sum(f22);
f24 = f23/length(f2);
f25 = sqrt(f24);
sigma2 = f25;
q = (f21)/sigma2;
X_norm = [p,q];
mu = [mu1,mu2];
sigma = [sigma1,sigma2];







% ============================================================

end
