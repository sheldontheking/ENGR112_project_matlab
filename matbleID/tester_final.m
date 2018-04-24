clc
clear

myusb = legoev3('usb')
%mybt = legoev3('bt','001653453b5f')

% dispen = motor(myusb,'A');
% spider = motor(myusb,'B');
% spin = motor(myusb,'C');
% barcodemotor = motor(myusb,'D');
% belt = motor(mybt,'B');
% flicker = motor(mybt,'A');


% resetRotation(spin);
% resetRotation(spider);

colorSort = colorSensor(myusb,1);
% barcodecolor = colorSensor(myusb,2);
%% read barcode

%barcode_reader
barcodeMarbArray = [0 0 0 0 0 0 0 0 0];

%% bins 
%  1 -> S Blue 
%  2 -> S Red 
%  3 -> S White 
%  4 -> Metal 
%  5 -> Plastic 
%  6 -> Waste
%  7 -> L Blue 
%  8 -> L Red
%  9 -> L White 
%% start dispensor


% count = 0;
% 
% while count < 10
%     bin = ColorMarbDetect(colorSort);
%     RotateToSpider(spider,bin);
%     disp(bin)
%     pause(2);
%     Xspinner(spin);
%     pause(3);
%     count = count +1;
% end

% stop(dispen)