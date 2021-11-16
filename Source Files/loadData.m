function [X_train, y_train, X_test, y_test] = loadData()
%   LOADDATA imports data downloaded from 
%   https://archive.ics.uci.edu/ml/datasets/Real+estate+valuation+data+set
%   and splits the dataset into two sets: training set and testing set
%
%   We only use three features as the input X: 
%       X2=the house age (unit:year)
%       X3=the distance to the nearest MRT station (unit:degree)
%       X4=the number of convenience stores in the living circle on foot (integer)
%   The output y is:
%       y=house price of unit area (10000 New Taiwan Dollar/Ping, where 
%         Ping is a local unit, 1 Ping = 3.3 meter squared)

 % ====================== YOUR CODE HERE ======================
    % Instructions: Import spreadsheets data and extract the columns
    % corresponding to X2, X3, X4 and store them as X. Extract the last
    % column and store it as y. 
    %
    % Randomly pick 70% of the data examples as the training set and the 
    % the rest as the testing set
    %
    % Hint: You might find the 'readtable' and 'table2array' functions useful.
    %

    % add excel file data to table
    table = readtable('housePriceData.xlsx', 'VariableNamingRule', 'preserve');
    X = table2array(table(:,3:5)) % set columns 3 to 5 to X
    y = table2array(table(:,8)); % set column 8 to y
    
    % separate a random 70% of data set to X_train and rest to X_test
    [m,n] = size(X);
    P = .7;
    sample_rand = randperm(m);
    X_train = X(sample_rand(1:round(P*m)),:);
    X_test = X(sample_rand(round(P*m)+ 1:end),:);
    [m,n] = size(y);
    y_train = y(sample_rand(1:round(P*m)),:);
    y_test = y(sample_rand(round(P*m)+1:end),:);
 % ============================================================   
    
end