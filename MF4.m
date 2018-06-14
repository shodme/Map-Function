% Ifadis
function  value  = MF4(degree )
degree = 90 - degree;
% degree指的是高度角 （入射角（天顶距） = 90 - 高度角）//
rad = degree * pi / 180;

% 这里取参数：
P = 1000;%1000Pa
e = 0;%0Pa
T = 293.15;%293.15K
beta = 6.5;%6.5K/km
H = 11.231;%11.231km

para1 = -0.078;%c
para2 = 0.003333+0.1946*1e-6*(P-1000)+0.104*1e-5*(T-288.15)+0.8057*1e-5*sqrt(e);%b
para3 = 0.001237+0.1316*1e-6*(P-1000)+0.1378*1e-5*(T-288.15)+0.1747*1e-4*sqrt(e);%a


A = sin(rad) + para1;
B = sin(rad) + para2 / A;
C = sin(rad) + para3 / B;

A1 = 1 + para1;
B1 = 1 + para2 / A1;
C1 = 1 + para3 / B1;

value = C1 / C;


end

