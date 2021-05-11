%% LED toggle on and off
% until swittch is pressed

clear;clc;format compact;
MyArduino=arduino;

MyArduino.configurePin('D8','pullup');


k = 1;
while k == 1
    if MyArduino.readDigitalPin('D8') == 1
        
   MyArduino.writeDigitalPin('D12',1)
   MyArduino.writeDigitalPin('D2',0)
   
   pause(1)
   
   MyArduino.writeDigitalPin('D12',0)
   MyArduino.writeDigitalPin('D2',1)
   pause(1)
   
    else
        
       
        MyArduino.writeDigitalPin('D2',0)
        MyArduino.writeDigitalPin('D12',0) 
        
    end
    
end
    
   