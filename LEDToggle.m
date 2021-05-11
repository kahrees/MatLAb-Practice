%% Arduino Lab 1 - LEDToggle.m
% You will be asked to observe the behavior of the LEDs on your Arduino
% circuit as the script file executes. You will use your observations to
% answer the questions on the lab handout.
format compact;clear;clc
MyArduino=arduino
%
MyArduino.configurePin('D8','pullup');

%% Press ctrl+c to stop the loop
x = 1;
while x == 1
    if MyArduino.readDigitalPin('D8') == 1
        MyArduino.writeDigitalPin('D2',1)
        MyArduino.writeDigitalPin('D12',0)
    else
        MyArduino.writeDigitalPin('D2',0)
        MyArduino.writeDigitalPin('D12',1)        
    end
    pause(0.1) %Dont go too fast and knock out communication
end