clear
mylego = legoev3('usb')
m1 = legoev3('bt', '001653453b5f')
m = motor(mylego,'A');
resetRotation(m)
while true
    color = ColorMarbDetect(m1);
    RotateTo(m,color) 
    Xspinner(mylego)
    pause(2)
    RotateTo(m,0) 
    
end 