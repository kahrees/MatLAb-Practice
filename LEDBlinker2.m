%% Arduino Lab 1 - LEDBlinker2.m
% The code in this script contains a for loop structure that alternates
% which LED is off and which is on for a specified number of times.

format compact;clear;clc
MyArduino=arduino 
 
for k = 1:20
   MyArduino.writeDigitalPin('D12',1)
   MyArduino.writeDigitalPin('D2',0)
   pause(1.5)
   MyArduino.writeDigitalPin('D12',0)
   MyArduino.writeDigitalPin('D2',1)
   pause(1.5)

end
MyArduino.writeDigitalPin('D2',0)


