# Texas A&M university ENGR 112 marble sorting project code written in matlab

made by Zengyu(Sheldon) Wei, and Michael Kevin Lau

## the types of marble we had to handle was:
    -small/large blue
    -small/large red
    -small/large white
    -small/large yellow(waste)
    -small/large green(waste)
    -two tpyes of metal
    -white plastic
## barcode reader
  this part of the code is for reading 4 barcodes one by one, translate the scanned information into marble material and number of each type required for the next part of the project

## sorter and dispenser
    Based on our design, we first start the dispenser that holds all the marbles(75 of them), and the marbles(dispensed by the first dispenser) goes into a dark box, in which the marble will be identified then drop into different pathway. The program is designed to keep track of the number of marbles in each pathway.
    Then using the information we got from the barcode reading, we check and see if there are enough marble to fulfill the "dosage". If there is, we use the last dispenser to dispense, else we play a warning sound.
