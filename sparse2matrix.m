function [matrix] = sparse2matrix(X)
    %Give instructions to create a sparse matrix from a cell array
    
    step1 = ones(X{1});
    step2 = X{2} * step1;
    
    for n = 3:size(X,2)
        b = X{n};
    step2(b(1),b(2)) = b(3);
    
    end 
    
    matrix = step2;    
  

end