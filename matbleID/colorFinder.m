function [ColorIndex] = colorFinder(legoObject)
%clear
%mylego = legoev3('usb');

ColorSense = colorSensor(legoObject, 1);

RGB = readColorRGB(ColorSense);
R = RGB(1);
G = RGB(2);
B = RGB(3);
    
    
if  R <=  36  && R >=  16  && G <=  32  && G >=  12   && B <=  39  && B >=  19 %small blue 
    ColorIndex = 1;
    
elseif R <=  39  && R >=  19  && G <=  47  && G >=  27   && B <=  77  && B >=  57 % large blue
    ColorIndex = 7;
    
elseif R <=  60  && R >=  40  && G <=  26  && G >=  6   && B <=  19  && B >=  0 %small red
    ColorIndex = 2; 
    
elseif R <=  150  && R >=  97  && G <=  24  && G >=  0   && B <=  20  && B >=  0 %Large red
    
    ColorIndex = 8;
elseif R <=  82  && R >=  59  && G <=  70  && G >=  49   && B <=  66  && B >=  40 %small white
    ColorIndex = 3;
elseif  R <=  255  && R >=  110  && G <=  255  && G >=  110   && B <=  255  && B >=  110 %Large white
    ColorIndex = 9;
    
elseif R <=  36  && R >=  30  && G <=  25  && G >=  19   && B <=  19  && B >=  13  %metal
    ColorIndex = 4;
    
elseif R <=  62  && R >=  42  && G <=  50  && G >=  30   && B <=  44 && B >=  24  %plastic 
    ColorIndex = 5;
    fprintf('read white')
    
elseif R <=  77  && R >=  57  && G <=  53  && G >=  33   && B <=  21  && B >=  0 %small yellow 
    ColorIndex = 6;
    
elseif R <=  255  && R >=  140  && G <=  94  && G >=  74   && B <=  27  && B >=  7 %large yellow
    ColorIndex = 6;
elseif  R <=  40  && R >=  20  && G <=  41  && G >=  21   && B <=  22  && B >=  2 %small green 
    ColorIndex = 6;
elseif  R <=  31  && R >=  11  && G <=  43  && G >=  23   && B <=  22  && B >=  2 %large green
    ColorIndex = 6;
else 
    ColorIndex = -1;
    


end