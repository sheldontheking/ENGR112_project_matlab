function [] = RotateTo(myMotor,bin)
%clear 
%mylego = legoev3('usb');



if bin == 1 %%blue 
   currentRot = readRotation(myMotor);
   while currentRot <= 27
        myMotor.Speed = 20;
        start(myMotor)
        currentRot = readRotation(myMotor);
   end
   stop(myMotor,1)
   fprintf('blue move done')
elseif bin == 2 %% Red
    
elseif bin == 3 %%White
     currentRot = readRotation(myMotor);
   while currentRot >= -29
        myMotor.Speed = -20;
        start(myMotor)
        currentRot = readRotation(myMotor);
   end
   stop(myMotor,1)
   fprintf('red move done')
elseif bin == 4 %%Metal
    currentRot = readRotation(myMotor);
   while currentRot >= -12
        myMotor.Speed = -20;
        start(myMotor)
        currentRot = readRotation(myMotor);
   end
   stop(myMotor,1)
   fprintf('red move done')
elseif bin == 5 %%Plastic
    currentRot = readRotation(myMotor);
   while currentRot <= 10
        myMotor.Speed = 20;
        start(myMotor)
        currentRot = readRotation(myMotor);
   end
   stop(myMotor,1)
elseif bin == 6 %%Waste
 currentRot = readRotation(myMotor);
   while currentRot >= -100
        myMotor.Speed = -20;
        start(myMotor)
        currentRot = readRotation(myMotor);
   end
   stop(myMotor,1)
elseif bin == 0 %%Center
    currentRot = readRotation(myMotor);
    if currentRot > 0 
       myMotor.Speed = -20;
        
       while currentRot > 2 
           start(myMotor)
           currentRot = readRotation(myMotor);
       end 
       stop(myMotor,1)
       
       
    elseif currentRot < 0 
         myMotor.Speed = 20;
         
         while currentRot < -2 
           start(myMotor)
           currentRot = readRotation(myMotor);
       end 
       stop(myMotor,1)
         
    else 
        fprintf('current rotation already 0') 
    end
    
else
    fprintf('bin was invalid')
    
end





end