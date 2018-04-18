function [] = RotateToSpider(m,bin)

anglebs = 127 ; 
anglebl = 145 ;
anglesr = 98 ;
anglelr = 83 ;
anglesw = 55 ;
anglelw = 38 ;
anglem  = 69 ;
anglep  = 112 ;
anglew  = -2 ;

currentRot = readRotation(m);

if bin == 1 %%blue small 
   
currentRot = readRotation(m);
if anglebs > currentRot
       m.Speed = 10;
       while anglebs > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglebs <= currentRot 
       m.Speed = -10 ;
       while anglebs < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 7 %Large Blue 


currentRot = readRotation(m);
if anglebl > currentRot
       m.Speed = 10;
       while anglebl > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglebl <= currentRot 
       m.Speed = -10 ;
       while anglebl < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
    
elseif bin == 2 %small red
    

currentRot = readRotation(m);
if anglesr > currentRot
       m.Speed = 10;
       while anglesr > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglesr <= currentRot 
       m.Speed = -10 ;
       while anglesr < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end

elseif bin == 8 % Large Red 
    

currentRot = readRotation(m);
if anglelr  > currentRot
       m.Speed = 10;
       while anglelr > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglelr <= currentRot 
       m.Speed = -10 ;
       while anglelr < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
    
elseif bin == 3 %small white 
   
currentRot = readRotation(m);
if anglesw > currentRot
       m.Speed = 10;
       while anglesw > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglesw <= currentRot 
       m.Speed = -10 ;
       while anglesw < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 9 %large white 
 
currentRot = readRotation(m);
if anglelw > currentRot
       m.Speed = 10;
       while anglelw > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglelw <= currentRot 
       m.Speed = -10 ;
       while anglelw < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 4 % metal
    
currentRot = readRotation(m);
if anglem > currentRot
       m.Speed = 10;
       while anglem > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglem <= currentRot 
       m.Speed = -10 ;
       while anglem < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 5 % plastic
currentRot = readRotation(m);
if anglep > currentRot
       m.Speed = 10;
       while anglep > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglep <= currentRot 
       m.Speed = -10 ;
       while anglep < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 6 % waste

currentRot = readRotation(m);
if anglew > currentRot
       m.Speed = 10;
       while anglew > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglew <= currentRot 
       m.Speed = -10 ;
       while anglew < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
else
    error('bin was invalid')
    
end





end