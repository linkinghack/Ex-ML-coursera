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

H = X * theta;

J = (1/(2*m)) * ( sum((H - y).^2) + lambda * (theta' * theta - theta(1)^2)); % 不对theta(1) 正则化

grad = 1/m .* ( sum( X .* (H - y)) + lambda .* theta' );
grad(1) = sum( X(:,1) .* (H - y)) / m; % 单独计算theta(1)的偏导数（不含正则项的导数）

% =========================================================================

grad = grad(:);

end
