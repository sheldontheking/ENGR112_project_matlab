clear
mylego = legoev3('usb');
m = motor(mylego,'A');
resetRotation(m)
while true
    color = ColorMarbDetect(mylego);
    RotateTo(m,color) 
    Xspinner(mylego)
    pause(2)
    RotateTo(m,0) 
    
end 