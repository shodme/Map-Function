function  value  = MF1(degree )
degree = 90 - degree;
% degreeָ���Ǹ߶Ƚ� ������ǣ��춥�ࣩ = 90 - �߶Ƚǣ�//
rad = degree * pi / 180;

para1 = 0.11571;
para2 = 0.0060788;
para3 = 0.0021722;
para4 = 0.00085599;

A = sin(rad) + para1;
B = sin(rad) + para2 / A;
C = sin(rad) + para3 / B;
D = sin(rad) + para4 / C;

value = 1 / D;


end

