function currentDigit = readCurrentBlock(mymotor, mycolorsensor)
    mymotor.Speed = -30;
    resetRotation(mymotor);
    currentRot = readRotation(mymotor); 
    while currentRot >= -4
       start(mymotor)
       currentRot = readRotation(mymotor);

    end
    stop(mymotor)
    
    if(readColor(mycolorsensor) == "white") 
         currentDigit = 0;
    else
         currentDigit = 1;
    end
    
    resetRotation(mymotor);
    currentRot = readRotation(mymotor); 
    while currentRot >= -5.9
       start(mymotor)
       currentRot = readRotation(mymotor);

    end
    stop(mymotor)
end