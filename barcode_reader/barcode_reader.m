
%% initialization of brick, sensor, and motor
barcodemotor = motor(myusb,'D')
barcodecolor = colorSensor(myusb,4)
%% initialization of vars

rotation = readRotation(barcodemotor);
barcode1 = [];
barcode2 = [];
barcode3 = [];
barcode4 = [];
total = [];
count = 1;
barcodemotor.Speed = -30;

%% program
  start(barcodemotor)
while (readColor(barcodecolor) == 'white')
    pause(0.0001)
end
stop(barcodemotor,1)

pauseMotor(1,barcodemotor)

while count <= 17
    barcode1 = [barcode1,readCurrentBlock(barcodemotor, barcodecolor)];
    pauseMotor(1,barcodemotor)
    barcodemotor.Speed = -30;
    count = count + 1;
end
barcode1
%% 
count = 1;
start(barcodemotor)
while (readColor(barcodecolor) == "white")
    pause(0.0001)
end
stop(barcodemotor,1)

pauseMotor(1,barcodemotor)

while count <= 17
    barcode2 = [barcode2,readCurrentBlock(barcodemotor, barcodecolor)];
    pauseMotor(1,barcodemotor)
    barcodemotor.Speed = -30;
    count = count + 1;
end
barcode2
%%
count = 1;
start(barcodemotor)
while (readColor(barcodecolor) == "white")
    pause(0.0001)
end
stop(barcodemotor,1)

pauseMotor(1,barcodemotor)

while count <= 17
    barcode3 = [barcode3,readCurrentBlock(barcodemotor, barcodecolor)];
    pauseMotor(1,barcodemotor)
    barcodemotor.Speed = -30;
    count = count + 1;
end
barcode3
%%
count = 1;
start(barcodemotor)
while (readColor(barcodecolor) == "white")
    pause(0.0001)
end
stop(barcodemotor,1)

pauseMotor(1,barcodemotor)

while count <= 17
    barcode4 = [barcode4,readCurrentBlock(barcodemotor, barcodecolor)];
    pauseMotor(1,barcodemotor)
    barcodemotor.Speed = -30;
    count = count + 1;
end
barcode4
%% translate barcode into meaningful information and out put it into a file


[x1,y1] = detectMeterial(barcode1([3 5 7]));
[m1,n1] = numberOfPallets(barcode1([9 11 13 15 17]));

meterial = [x1,y1];
numOfPallet = [m1,n1];

[x2,y2] = detectMeterial(barcode2([3 5 7]));
[m2,n2] = numberOfPallets(barcode2([9 11 13 15 17]));

meterial = [x2,y2];
numOfPallet = [m2,n2];

[x3,y3] = detectMeterial(barcode3([3 5 7]));
[m3,n3] = numberOfPallets(barcode3([9 11 13 15 17]));

meterial = [x3,y3];
numOfPallet = [m3,n3];


[x4,y4] = detectMeterial(barcode4([3 5 7]));
[m4,n4] = numberOfPallets(barcode4([9 11 13 15 17]));

meterial = [x4,y4];
numOfPallet = [m4,n4];

barcodeMarbArray = [0 0 0 0 0 0 0 0 0];
barcodeMarbArray(x1) = m1 + barcodeMarbArray(x1);
barcodeMarbArray(y1) = n1 + barcodeMarbArray(y1);
barcodeMarbArray(x2) = m2 + barcodeMarbArray(x2);
barcodeMarbArray(y2) = n2 + barcodeMarbArray(y2);
barcodeMarbArray(x3) = m3 + barcodeMarbArray(x3);
barcodeMarbArray(y3) = n3 + barcodeMarbArray(y3);
barcodeMarbArray(x4) = m4 + barcodeMarbArray(x4);
barcodeMarbArray(y4) = n4 + barcodeMarbArray(y4);

