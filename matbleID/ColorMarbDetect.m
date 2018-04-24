function [output] = ColorMarbDetect(colorSort)

currentColor = -1;
breakout = false;
% -1 -> Brown and No color 
%  1 -> S Blue 
%  2 -> S Red 
%  3 -> S White 
%  4 -> Metal 
%  5 -> Plastic 
%  6 -> Waste
%  7 -> L Blue 
%  8 -> L Red
%  9 -> L White 
while breakout == false

    while currentColor == -1
       currentColor = colorFinder(colorSort);
       pause(0.3);
    end
    currentColor = colorFinder(colorSort);
    break;
end

output = currentColor;
%end of function
end