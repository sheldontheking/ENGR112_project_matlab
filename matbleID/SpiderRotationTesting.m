clear
clc


mylego = legoev3('usb');
m = motor(mylego, 'D') ;



resetRotation(m) 


RotateToSpider(m,2)

pause(.2)


RotateToSpider(m,6)


stop(m,1) 