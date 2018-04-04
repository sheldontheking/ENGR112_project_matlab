clc
clear
close all

%% initialization of brick, sensor, and motor
myev3 = legoev3('USB')
mycolorsensor = colorSensor(myev3);
mymotor = motor(myev3,'B');
resetRotation(mymotor);

%% initialization of vars

rotation = readRotation(mymotor);
barcode = [];
count = 1;
mymotor.Speed = -30;

%% program
start(mymotor)
while (readColor(mycolorsensor) == "white")
    pause(0.0001)
end
stop(mymotor,1)

pauseMotor(1,mymotor)

while count <= 11
    barcode = [barcode,readCurrentBlock(mymotor, mycolorsensor)];
    pauseMotor(1,mymotor)
    mymotor.Speed = -30;
    count = count + 1;
end
%% translate barcode into meaningful information and out put it into a file

[x,y] = detectMeterial(barcode([3 4 5]));
[m,n] = numberOfPallets(barcode([7 8 9 10 11]));

meterial = [x,y];
numOfPallet = [m,n];

sum = [meterial; numOfPallet];

file = fopen('key.txt','w');
fprintf(file, "%s,%s\n", meterial);
fprintf(file, "%d,%d\n", numOfPallet);
fclose(file);

% mymotor.Speed = -100;
% start(mymotor)
% pause(0.5)
% stop(mymotor)