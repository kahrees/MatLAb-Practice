function [summa] = halfsum(X)
    %UNTITLED2 Summary of this function goes here
    %   Detailed explanation goes here
    
    s = size(X);
    summa = 0;
   
 for r = 1:s(1)
    for c = r:s(2)
        summa = summa + X(r,c);
   
    end
 end
end 