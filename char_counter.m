function [charnum] = char_counter(fname,character)

fid=fopen(fname);
charnum = 0; 
   
    if fid <= 0 
       charnum = -1;
       return
   end
   
   if ischar(character) ~= 1
    charnum = -1;
   end
    
    
oneline = fgets(fid);
  while ischar(oneline)
      char = oneline==character;
      charnum = charnum + sum(char==1);
      oneline = fgets(fid);     
  end      
      
   
end