function [] = Xspinner(spinner)
spinner.Speed = -20; 
resetRotation(spinner);
currentRot = readRotation(spinner);

    while currentRot > -88
       start(spinner);
       currentRot = readRotation(spinner);
    end

stop(spinner,1);
resetRotation(spinner);
end