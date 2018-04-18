function [type1numPallet,type2numPallet] = numberOfPallets(barcode)
barcode = fliplr(barcode);

z = 2.^(length(barcode)-1:-1:0);
numPallet = sum(barcode.*z);

switch numPallet
    case 1
        type1numPallet = 0;
        type2numPallet = 0;
    case 2
        type1numPallet = 1;
        type2numPallet = 0;
    case 3
        type1numPallet = 2;
        type2numPallet = 0;
    case 4
        type1numPallet = 3;
        type2numPallet = 0;
    case 5
        type1numPallet = 0;
        type2numPallet = 1;
    case 6
        type1numPallet = 1;
        type2numPallet = 1;
    case 7
        type1numPallet = 2;
        type2numPallet = 1;
    case 8
        type1numPallet = 3;
        type2numPallet = 1;
    case 9
        type1numPallet = 0;
        type2numPallet = 2;
    case 10
        type1numPallet = 1;
        type2numPallet = 2;
    case 11
        type1numPallet = 2;
        type2numPallet = 2;
    case 12
        type1numPallet = 3;
        type2numPallet = 2;
    case 13
        type1numPallet = 0;
        type2numPallet = 3;
    case 14
        type1numPallet = 1;
        type2numPallet = 3;
    case 15
        type1numPallet = 2;
        type2numPallet = 3;
    case 16
        type1numPallet = 3;
        type2numPallet = 3;
end
