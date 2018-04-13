function [] = RotateToSpider(m,bin)

anglebs = 90 ; 
anglebl = 90 ;
anglesr = 90 ;
anglelr = 90 ;
anglesw = 90 ;
anglelw = 90 ;
anglem  = 90 ;
anglep  = 90 ;
anglew  = 0 ;

currentRot = readRotation(m);

if bin == 1 %%blue small 
   anglebs = 90;
currentRot = readRotation(m);
if anglebs > currentRot
       m.Speed = 20;
       while anglebs > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglebs <= currentRot 
       m.Speed = -20 ;
       while anglebs < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 7 %Large Blue 


currentRot = readRotation(m);
if anglelb > currentRot
       m.Speed = 20;
       while anglelb > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglelb <= currentRot 
       m.Speed = -20 ;
       while anglelb < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
    
elseif bin == 2 %small red
    

currentRot = readRotation(m);
if anglesr > currentRot
       m.Speed = 20;
       while anglesr > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglesr <= currentRot 
       m.Speed = -20 ;
       while anglesr < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end

elseif bin == 8 % Large Red 
    

currentRot = readRotation(m);
if anglelr  > currentRot
       m.Speed = 20;
       while anglelr > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglelr <= currentRot 
       m.Speed = -20 ;
       while anglelr < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
    
elseif bin == 3 %small white 
   
currentRot = readRotation(m);
if anglesw > currentRot
       m.Speed = 20;
       while anglesw > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglesw <= currentRot 
       m.Speed = -20 ;
       while anglesw < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 9 %large white 
 
currentRot = readRotation(m);
if anglelw > currentRot
       m.Speed = 20;
       while anglelw > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglelw <= currentRot 
       m.Speed = -20 ;
       while anglelw < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 4 % metal
    
currentRot = readRotation(m);
if anglem > currentRot
       m.Speed = 20;
       while anglem > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglem <= currentRot 
       m.Speed = -20 ;
       while anglem < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 5 % plastic
currentRot = readRotation(m);
if anglep > currentRot
       m.Speed = 20;
       while anglep > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglep <= currentRot 
       m.Speed = -20 ;
       while anglep < currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
end
elseif bin == 6 % waste

currentRot = readRotation(m);
if anglew > currentRot
       m.Speed = 20;
       while anglew > currentRot
           start(m) ;
           currentRot = readRotation(m);
       end
       stop(m,1)
elseif anglew <= currentRot 
       m.Speed = -20 ;
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