function [meterialOne, meterialTwo] = detectMeterial(barcode)
barcode = fliplr(barcode);

    if barcode(1) == 1
        meterialOne = 4;
        meterialTwo = 5;
    elseif barcode(2) == 1
        if barcode(3) == 1
            meterialOne = 7;
            meterialTwo = 1;
        else
            meterialOne = 8;
            meterialTwo = 2;
        end
    else
        meterialOne = 9;
        meterialTwo = 3;
    end
end
    