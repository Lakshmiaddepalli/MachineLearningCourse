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
%X = [ones(m, 1) X];
Multiplication = X*theta;
Difference = Multiplication - y;
Square = Difference.^2;
Sum = sum(Square);
Product = 2*m;
answer = Sum/Product;
s = theta(2:end,:);
q = s.^2;
r = sum(q,1);
ans = [(lambda)/(2*m)]*r;
J = ans + answer;
s1 = sum(Difference)/(length(y));
grad(1) = s1;
x = X(:,2:end);
z = Difference.*x;
a = sum(z,1);
answ = a/m;
b = theta(2:end,:);
answ1 = [(lambda)/(m)]*b;
p = answ + answ1';
grad = [s1 p];



% =========================================================================

grad = grad(:);

end
