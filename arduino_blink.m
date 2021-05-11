pin = 'D13';
for n = 1:10
 MyArduino.writeDigitalPin(pin, 0);
 pause(0.2);
 MyArduino.writeDigitalPin(pin, 1);
 pause(0.2);
end
