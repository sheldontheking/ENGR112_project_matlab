function [] = pauseMotor(time,mymotor)
    mymotor.Speed = 0;
    start(mymotor)
    pause(time)
    stop(mymotor,1)
    mymotor.Speed = -30;
end