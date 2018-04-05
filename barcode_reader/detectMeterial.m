function [meterialOne, meterialTwo] = detectMeterial(barcode)
barcode = fliplr(barcode);

    if barcode(1) == 1
        meterialOne = "steel";
        meterialTwo = "HDPE";
    elseif barcode(2) == 1
        if barcode(3) == 1
            meterialOne = "large blue glass";
            meterialTwo = "small blue glass";
        else
            meterialOne = "large red glass";
            meterialTwo = "small red glass";
        end
    else
        meterialOne = "large white glass";
        meterialTwo = "small white glass";
    end
end
    