%% Arduino Lab 1 - FuriousLEDs.m
% You will be asked to observe the behavior of the LEDs on your Arduino
% circuit as the script file executes. You will use your observations to
% answer the questions on the lab handout.

% Connect to arduino
clear;clc;format compact;
MyArduino=arduino;


%
BlinkNumbers=10:10:50;
BlinkDelay=0.5:-0.1:0.1;

for x=1:length(BlinkNumbers)
    clc
    fprintf('Blinking %i times at a rate of %4.2f.\n',BlinkNumbers(x),BlinkDelay(x))
    
    for nothing=1:BlinkNumbers(x)
        MyArduino.writeDigitalPin('D12',1)
        MyArduino.writeDigitalPin('D2',0)

        pause(BlinkDelay(x));

        MyArduino.writeDigitalPin('D12',0)
        MyArduino.writeDigitalPin('D2',1)
        
        pause(BlinkDelay(x));
    end
end
MyArduino.writeDigitalPin('D2',0)

