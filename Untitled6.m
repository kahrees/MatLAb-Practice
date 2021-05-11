
clear;clc;
MyArduino=arduino;

for n = 1:10000
    
   if n/2 == 1
        MyArduino.writeDigitalPin('D12',1)
        MyArduino.writeDigitalPin('D2',0)
        
        pause(1)
        
   elseif n/2 ~= 1
            MyArduino.writeDigitalPin('D12',0)
            MyArduino.writeDigitalPin('D2',1)
            
            pause(1)
            
   end
    
    n = n+1;
   disp(n)
    
end
