%% Example: [summa, index] = max_sum([1 2 3 4 5 4 3 2 1],3)

function [summa,index]=max_sum(v,n)
y = length(v);
if n>y
    summa=0;
    index=-1;
    
else                                   
    
    [summa,index]=max(movsum(v,n,'Endpoints',"discard"));
end
end