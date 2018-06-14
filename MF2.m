function  [val_D,val_W]  = MF2( degree )
degree = 90 - degree;
% degree指的是高度角 （入射角（天顶距） = 90 - 高度角）//
rad = degree * pi / 180;


para1 = 0.00455;
para2 = 0.0043;
para3 = 0.0017;
para4 = 0.00035;


A1 = sin(rad) + para1;
B1 = sin(rad) + para2 / A1;

% dry component
val_D = 1 / B1;


A2 = sin(rad) + para3 ;
B2 = sin(rad) + para4 / A2;

val_W = 1 / B2;

end

