

clear;

MyArduino=arduino;
MyArduino.configurePin(pin_btn,'pullup');
p = MyArduino.readDigitalPin(pin_btn);


MyArduino.configurePin('D8','pullup');
MyArduino.readDigitalPin('D8')


pin_btn = 'D5';
MyArduino.configurePin('D5','pullup');
MyArduino.readDigitalPin('D5')

