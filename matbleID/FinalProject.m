clc
clear
close all
%Reading Barcode 

%barcode_reader
barcodeMarbArray = [0,0,0,0,1,0,0,0,1];
%end reading barcode, the final array with information collected from barcode is "barcodeMarbArray"
myusb = legoev3('usb')
mybt = legoev3('bt','001653453b5f')
belt = motor(myev3,'C');
flicker = motor(myev3,'D');


%starting up the dispensor 
disMotor = motor(myev3, 'A'); %should be connected to bluetooth brick!!
disMotor.Speed = 10;
start(disMotor) ;

%starting up the sorter 
mylego = legoev3('usb');
sorterMotor = motor(mylego, 'A') ;

%sorting 
counterArray = [0 0 0 0 0 0 0 0 0]; % [SB SR SW M P W LB LR LW]

while sum(counterArray) <= 75 
   
    color = ColorMarbDetect(mylego);
    RotateToSpider(sorterMotor, color) 
    Xspinner(mylego) %THE SPINNER USES MOTOR 'D'
    pause(2)
    RotateToSpider(sorterMotor ,6) 
    
    %counter
    counterArray(color) = counterArray(color) + 1;
end
%sorting completed 

isDespenseValid = true ;
barcodeMarbArray = barcodeMarbArray.*3;
for i = 1:9
    if barcodeMarbArray(i) > counterArray(i)
        isDespenseValid = false;
        break 
    
    end 
end
%starting dispensing. 
if isDespenseValid
        flicker = motor(mylego, 'B') ;
        beltMotor = motor(mylego, 'C') ;
    for i = 1:3 

        for j = 1:9 
            while barcodeMarbArray(j) > 0 
                dispensor(beltMotor, flicker, j) 

                barcodeMarbArray(j) = barcodeMarbArray(j) - 1;
                pause(.3) 
            end
            pause(20)
    end 

    end
else 
    %playing error tone!
    for i = 1:10
    playTone(mylego, 500,1,10);
    playTone(mylego, 500,1,7);
end 
