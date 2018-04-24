
dispen.Speed = 20;
start(dispen);
pause(4)
resetRotation(spider)
while true
    
    color = ColorMarbDetect(colorSort);
    RotateTo(spider,color) 
    Xspinner(spin)
    pause(2)
    RotateTo(spider,6) 
    
end 