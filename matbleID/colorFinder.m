function [ColorIndex] = colorFinder(colorSort)

RGB = readColorRGB(colorSort)
R = RGB(1);
G = RGB(2);
B = RGB(3);
%% marble color var
backgroundR = 36;
backgroundG = 24;
backgroundB = 12;
templ = 50;
temps = 12;
tempr = 3;
sbR = 23; %small blue
sbG = 21;
sbB = 26;
lbR = 29; %large blue
lbG = 44;
lbB = 70;
srR = 47; %small red
srG = 12;
srB = 6;
lrR = 82; %large red
lrG = 15;
lrB = 7;
swR = 76; %small white
swG = 87;
swB = 61;
lwR = 265; %large white
lwG = 245;
lwB = 173;
meR = 43; %metal
meG = 40;
meB = 24;
meR2 = 33; %metal2
meG2 = 25;
meB2 = 16;
peR = 47; %plastic
peG = 38;
peB = 31;
syR = 72; %small yellow
syG = 45;
syB = 10;
lyR = 164; %large yellow
lyG = 114;
lyB = 13;
sgR = 26; %small green
sgG = 35;
sgB = 12;
sgR2 = 26; %small green2
sgG2 = 35;
sgB2 = 12;
lgR = 40; %large green
lgG = 82;
lgB = 23;
%% if else determine meterial 
if     R <= backgroundR+tempr && R >= backgroundR-tempr && G <= backgroundG+tempr && G >= backgroundG-tempr && B <= backgroundB+tempr && B >= backgroundB-tempr %small yellow 
    ColorIndex = -1;
elseif R <=  sgR2+temps  && R >=  sgR2-temps && G <=  sgG2+temps  && G >=  sgG2-temps  && B <=  sgB2+temps  && B >=  sgB2-temps %small green 
    ColorIndex = 6;
elseif R <=  syR+temps  && R >=  syR-temps && G <=  syG+temps  && G >=  syG-temps  && B <=  syB+temps  && B >=  syB-temps %small yellow 
    ColorIndex = 6;
elseif R <=  meR2+temps  && R >=  meR2-temps && G <=  meG2+temps  && G >=  meG2-temps  && B <=  meB2+temps  && B >=  meB2-temps %metal2
    ColorIndex = 4; 
elseif R <=  swR+temps  && R >=  swR-temps && G <=  swG+temps  && G >=  swG-temps  && B <=  swB+temps  && B >=  swB-temps %small white
    ColorIndex = 3;
elseif R <=  srR+temps  && R >=  srR-temps && G <=  srG+temps  && G >=  srG-temps  && B <=  srB+temps  && B >=  srB-temps %small red
    ColorIndex = 2;    
elseif R <=  sbR+temps  && R >=  sbR-temps && G <=  sbG+temps  && G >=  sbG-temps  && B <=  sbB+temps  && B >=  sbB-temps %small blue 
    ColorIndex = 1;
elseif R <=  meR+temps  && R >=  meR-temps && G <=  meG+temps  && G >=  meG-temps  && B <=  meB+temps  && B >=  meB-temps %metal
    ColorIndex = 4;     
elseif R <=  peR+temps  && R >=  peR-temps && G <=  peG+temps  && G >=  peG-temps  && B <=  peB+temps  && B >=  peB-temps %plastic 
    ColorIndex = 5;
    fprintf('read plastic');
elseif R <=  sgR+temps  && R >=  sgR-temps && G <=  sgG+temps  && G >=  sgG-temps  && B <=  sgB+temps  && B >=  sgB-temps %small green 
    ColorIndex = 6;
elseif R <=  lgR+templ  && R >=  lgR-templ && G <=  lgG+templ  && G >=  lgG-templ  && B <=  lgB+templ  && B >=  lgB-templ %large green
    ColorIndex = 6;
elseif R <=  lbR+templ  && R >=  lbR-templ && G <=  lbG+templ  && G >=  lbG-templ  && B <=  lbB+templ  && B >=  lbB-templ %large blue
    ColorIndex = 7;
elseif R <=  lrR+templ  && R >=  lrR-templ && G <=  lrG+templ  && G >=  lrG-templ  && B <=  lrB+templ  && B >=  lrB-templ %Large red
    ColorIndex = 8;
elseif R <=  lyR+templ  && R >=  lyR-templ && G <=  lyG+templ  && G >=  lyG-templ  && B <=  lyB+templ  && B >=  lyB-templ %large yellow
    ColorIndex = 6;
elseif R <=  lwR+templ  && R >=  lwR-templ && G <=  lwG+templ  && G >=  lwG-templ  && B <=  lwB+templ  && B >=  lwB-templ %Large white
    ColorIndex = 9;
else 
    ColorIndex = 6;
    


end