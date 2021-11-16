function error = evaluateAccuracy(beta, X, y)
%EVALUATEACCURACY calculates the average prediction error of the learned 
%linear regression model using the testing data 

m = length(y); % number of testing examples

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the prediction error for each testing example and
%               then take the mean


% the following for loop calculates the Sum of Squared Error (prediction
% error for each true value with the output of our regression model)
total = 0;
for k=1:m
    total = total + ( y(k) - X(k,:)*beta )^2;
    %total = total + ( y(k,1) - (beta(1)+beta(2)*X(k,2)+beta(3)*X(k,3)+beta(4)*X(k,4)) )^2;
end
error = total/m;
% ============================================================

end