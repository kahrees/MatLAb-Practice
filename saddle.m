function [indices] = saddle(M)

     minM = M <= min(M, [], 1);  
     maxM = M >= max(M, [], 2);
   
     [r, c] = find(minM & maxM);
 
    if isrow(M) 
         indices = [r', c'];
    else
         indices = [r, c]; 
    end
end