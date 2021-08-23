function [output] = echo_gen(input, fs, delay, amp)
    %UNTITLED Summary of this function goes here
    %   Detailed explanation goes here
    
del = [zeros(round(delay * fs),1)];
original = [input;del];
echo = [del;input];
echo = echo * amp;
echo = original + echo;

if max(abs(echo)) > 1
 output = echo./max(abs(echo));
 
else output = echo;
end

end