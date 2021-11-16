function J = computeCost(X, y, beta)
%COMPUTECOST computes the cost of using beta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of beta
%               You should set J to the cost.

SSE = 0;
for i=1:m
    SSE = SSE + ( y(i)-X(i,:)*beta )^2;
end
sum_bsquared = 0;
lambda = 0.1;
for k=1:length(beta)
    sum_bsquared = sum_bsquared + (beta(k))^2;
end
J = SSE + lambda*sum_bsquared;

% J = (0.5/m) * (X*beta - y)' * (X*beta - y);

% =========================================================================

end
