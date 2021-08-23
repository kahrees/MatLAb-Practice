function [numfreeze] = freezing(X)
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    days = X(X < 32);
    numfreeze = size(days,2);
end

