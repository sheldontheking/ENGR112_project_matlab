function [] = MoveChain(m,bin)

currentRot = readRotation(m);

beltPosAngleLB = 4;
beltPosAngleSB = -55;
beltPosAngleP  = -120;
beltPosAngleSR = -160;
beltPosAngleLR = -240;
beltPosAngleM  = -315;
beltPosAngleSW = -370;
beltPosAngleLW = -435;

if bin == 1 
    
    if currentRot > beltPosAngleSB 
    m.Speed = -20 ;
    while currentRot > beltPosAngleSB 
        start(m);
        currentRot = readRotation(m) ;
    end 
    stop(m,1) 
elseif currentRot < beltPosAngleSB
    m.Speed = 20 ;
    while currentRot < beltPosAngleSB 
        start(m) ;
        currentRot = readRotation(m );
    end 
    stop(m,1) 
    end

elseif bin == 2

    
    if currentRot > beltPosAngleSR 
    m.Speed = -20 ;
    while currentRot > beltPosAngleSR 
        start(m);
        currentRot = readRotation(m) ;
    end 
    stop(m,1) 
elseif currentRot < beltPosAngleSR
    m.Speed = 20 ;
    while currentRot < beltPosAngleSR 
        start(m) ;
        currentRot = readRotation(m );
    end 
    stop(m,1) 
    end


    
elseif bin == 3
    
if currentRot > beltPosAngleSW 
    m.Speed = -20 ;
    while currentRot > beltPosAngleSW 
        start(m);
        currentRot = readRotation(m) ;
    end 
    stop(m,1) 
elseif currentRot < beltPosAngleSW
    m.Speed = 20 ;
    while currentRot < beltPosAngleSW 
        start(m) ;
        currentRot = readRotation(m );
    end 
    stop(m,1) 
end
elseif bin == 4
    
    if currentRot > beltPosAngleM 
    m.Speed = -20 ;
    while currentRot > beltPosAngleM 
        start(m);
        currentRot = readRotation(m) ;
    end 
    stop(m,1) 
elseif currentRot < beltPosAngleM
    m.Speed = 20 ;
    while currentRot < beltPosAngleM 
        start(m) ;
        currentRot = readRotation(m );
    end 
    stop(m,1) 
    end

elseif bin == 5
if currentRot > beltPosAngleP 
    m.Speed = -20 ;
    while currentRot > beltPosAngleP 
        start(m);
        currentRot = readRotation(m) ;
    end 
    stop(m,1) 
elseif currentRot < beltPosAngleP
    m.Speed = 20 ;
    while currentRot < beltPosAngleP 
        start(m) ;
        currentRot = readRotation(m );
    end 
    stop(m,1) 
end
elseif bin == 6
    error('You cant Dispence waste!')
elseif bin == 7
    if currentRot > beltPosAngleLB 
    m.Speed = -20 ;
    while currentRot > beltPosAngleLB 
        start(m);
        currentRot = readRotation(m) ;
    end 
    stop(m,1) 
elseif currentRot < beltPosAngleLB
    m.Speed = 20 ;
    while currentRot < beltPosAngleLB 
        start(m) ;
        currentRot = readRotation(m );
    end 
    stop(m,1) 
    end

elseif bin == 8

    
    if currentRot > beltPosAngleLR 
    m.Speed = -20 ;
    while currentRot > beltPosAngleLR 
        start(m);
        currentRot = readRotation(m) ;
    end 
    stop(m,1) 
elseif currentRot < beltPosAngleLR
    m.Speed = 20 ;
    while currentRot < beltPosAngleLR 
        start(m) ;
        currentRot = readRotation(m );
    end 
    stop(m,1) 
end

elseif bin == 9
    
    if currentRot > beltPosAngleLW 
    m.Speed = -20 ;
    while currentRot > beltPosAngleLW 
        start(m);
        currentRot = readRotation(m) ;
    end 
    stop(m,1) 
elseif currentRot < beltPosAngleLW
    m.Speed = 20 ;
    while currentRot < beltPosAngleLW 
        start(m) ;
        currentRot = readRotation(m );
    end 
    stop(m,1) 
    end

end
end
