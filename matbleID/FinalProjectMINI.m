
% bin = colorFinder(colorSort);
% RotateToSpider(spider,bin);
% disp(bin)
% pause(1.5);
% Xspinner(spin);
% 
% stop(spider)
    

% for i = 1:10
%     Xspinner(spin)
% end
% % stop(spin)
% barcode_reader;
% barcodeMarbArray
resetRotation(spider);
dispen.Speed = 22;
start(dispen);
pause(3)

for i =1:75
    bin = ColorMarbDetect(colorSort);
    RotateToSpider(spider,bin);
    disp(bin)
    pause(2);
    Xspinner(spin);
end

stop(dispen)
stop(spin)
stop(spider)
