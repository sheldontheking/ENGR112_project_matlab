clear 
mylego = legoev3('usb');
color_sens = colorSensor(mylego, 1);

while true 
    
   a =readColorRGB(color_sens)
   
   pause(.5)
    
end