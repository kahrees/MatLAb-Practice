function [valid] = valid_date(year,month,day)
    %UNTITLED2 Summary of this function goes here
    %   Detailed explanation goes here
    
     if nargin < 3
        error('must have three input arguments');   
     end
     
     
 if ~isscalar(year) || ~isscalar(month) || ~isscalar(day) || year < 1 || month < 1 || day < 1
        valid = false;
 elseif month > 12 || day > 31
        valid = false;        
 elseif month == 4 && day > 30
         valid = false;
 elseif month == 9  && day > 30
         valid = false;
 elseif month == 6 && day > 30
         valid = false;
 elseif month == 11 && day > 30    
         valid = false;
 elseif month == 2 && day >= 29
        if mod(year,4) ~= 0 || mod(year,400) ~= 0
           valid = false;
        else 
            valid = true;
        end   
 else
          valid = true;   
 end     
   
 
 
     
end