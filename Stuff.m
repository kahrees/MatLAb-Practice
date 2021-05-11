k = 2;
MyArduino.writeDigitalPin('D2',0)
MyArduino.writeDigitalPin('D12',0)

MyArduino.writeDigitalPin('D2',1)
MyArduino.writeDigitalPin('D12',1)

p = MyArduino.readDigitalPin('D12')

clear;clc;

MyArduino=arduino

MyArduino.configurePin('D8','pullup');
MyArduino.readDigitalPin('D8')



MyArduino.configurePin('D12')
p = MyArduino.readDigitalPin('D12')

MyArduino.configurePin('D2')
h = MyArduino.readDigitalPin('D2')

MyArduino.configurePin('D2','pullup');
MyArduino.writeDigitalPin('D2',1)
p = MyArduino.readDigitalPin('D2')

MyArduino.configurePin('D2','Unset')
MyArduino.writeDigitalPin('D2',1)
p = MyArduino.readDigitalPin('D2')








MyArduino.configurePin('D2','DigitalInput')

MyArduino.writeDigitalPin('D2',1)
MyArduino.configurePin('D2','Unset')
readDigitalPin(MyArduino,'D2')