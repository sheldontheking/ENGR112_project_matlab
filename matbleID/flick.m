function [] = flick(m)
resetRotation(m)
m.Speed = -14;
start(m)
pause(.5)
stop(m,1) 

currentRot = readRotation(m) ;

m.Speed = 5;
while currentRot < -3.5
start(m)
currentRot = readRotation(m);
end 
stop(m,1)

end