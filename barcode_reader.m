clc
clear
close all

%% initialization of brick, sensor, and motor
myev3 = legoev3('USB');
mycolorsensor = colorSensor(myev3);
mymotor = motor(myev3,'B');
resetRotation(mymotor);
mymotor.Speed = 50;

%% initialization of vars
barcode = [];
rotation = readRotation(mymotor);

%% program
while(readColor(mycolorsensor) ~= "red")
    start(mymotor)
    pause(0.02)
    stop(mymotor)
    
    if(readColor(mycolorsensor) == "white") 
        barcode = [barcode, 0];
    else
        barcode = [barcode, 1];
    end
    
    start(mymotor)
    pause(0.02)
    stop(mymotor)
end


barcode

