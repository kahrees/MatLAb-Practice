%% Setup arduino - ONLY RUN ONCE (when you connect the Arduino)
clear
MyArduino = arduino('COM3','Uno','Libraries',{'I2C', 'SPI', 'Servo','Ultrasonic'})
sensor = MyArduino.ultrasonic('D4', 'D6') % trig pin, echo pin
MyArduino.configurePin('D8','pullup') % button