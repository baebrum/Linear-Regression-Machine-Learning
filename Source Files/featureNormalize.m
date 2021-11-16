function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

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
%               feature and each row is a sample data. You need 
%               to perform the normalization separately for 
%               each feature. 
%
% Hint: You might find the 'mean' and 'std' functions useful.
%       



% computing the mean and std for jth feature in data set
for j=1:3
    mu(j) = mean(X_norm(:,j));
    sigma(j) = std(X_norm(:,j));
end
% rescaling each (j) feature with each (i) sample
for i=1:length(X_norm)
    for j=1:3
        X_norm(i,j) = ( X_norm(i,j)-mu(j) ) / sigma(j);
    end
end

% check work if mean is zero and std is about 1
% for j=1:3
%     mu(j) = mean(X_norm(:,j));
%     sigma(j) = std(X_norm(:,j));
% end




% ============================================================

end
