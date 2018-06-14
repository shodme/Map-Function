% -------------------------------------------------------------
% Title:映射函数比较
% Author:wwt117@163.com
% Data:2018-6-13
% -------------------------------------------------------------
close all;
clear;
clc;

%% 计算

% 入射角从0度变化到87度
inc = 0:0.5:87;

% 余弦值
v = 1 ./ cos(inc*pi/180);
% MF1
for i=1:length(inc)
    v1(i) = MF1(inc(i));
end
% MF2
for i=1:length(inc)
    [v2_d(i),v2_w(i)] = MF2(inc(i));
end
% MF3
for i=1:length(inc)
    v3(i) = MF3(inc(i));
end
% MF4
for i=1:length(inc)
    v4(i) = MF4(inc(i));
end

%% 绘图1
figure(1)
plot(inc,v,inc,v1,inc,v2_d,inc,v3,inc,v4);
title("几种映射函数对比");
% ylabel(' ');
xlabel('入射角/°');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');


%% 绘图2
% 设天顶延迟为2.3米，对比斜距方向对流层时延大小
ZTD = 2300;%2.3m
v = ZTD * v;
v1 = ZTD * v1;
v2_d = ZTD * v2_d;
v3 = ZTD * v3;
v4 = ZTD * v4;

figure(2)
plot(inc,v,inc,v1,inc,v2_d,inc,v3,inc,v4);
title("对比几种映射函数斜距方向对流层时延");
xlabel('入射角/°');
ylabel('时延/mm');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');

%% 绘图3（局部图）
inc = 60:70;
len = length(inc);
% 余弦值
v = 1 ./ cos(inc*pi/180);
% MF1
for i=1:length(inc)
    v1(i) = MF1(inc(i));
end
% MF2
for i=1:length(inc)
    [v2_d(i),v2_w(i)] = MF2(inc(i));
end
% MF3
for i=1:length(inc)
    v3(i) = MF3(inc(i));
end
% MF4
for i=1:length(inc)
    v4(i) = MF4(inc(i));
end


figure(3)
plot(inc,v(1:len),inc,v1(1:len),inc,v2_d(1:len),inc,v3(1:len),inc,v4(1:len));
title("几种映射函数对比(局部图)");
% ylabel(' ');
xlabel('入射角/°');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');
%% 绘图4（局部图）

v = ZTD * v;
v1 = ZTD * v1;
v2_d = ZTD * v2_d;
v3 = ZTD * v3;
v4 = ZTD * v4;

figure(4)
plot(inc,v(1:len),inc,v1(1:len),inc,v2_d(1:len),inc,v3(1:len),inc,v4(1:len));
title("几种映射函数对比(局部图)");
xlabel('入射角/°');
ylabel('时延/mm');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');
%% 绘图4（局部图）
inc = 80:87;
len = length(inc);
% 余弦值
v = 1 ./ cos(inc*pi/180);
% MF1
for i=1:length(inc)
    v1(i) = MF1(inc(i));
end
% MF2
for i=1:length(inc)
    [v2_d(i),v2_w(i)] = MF2(inc(i));
end
% MF3
for i=1:length(inc)
    v3(i) = MF3(inc(i));
end
% MF4
for i=1:length(inc)
    v4(i) = MF4(inc(i));
end


figure(5)
plot(inc,v(1:len),inc,v1(1:len),inc,v2_d(1:len),inc,v3(1:len),inc,v4(1:len));
title("几种映射函数对比(局部图)");
% ylabel(' ');
xlabel('入射角/°');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');
%% 绘图6（局部图）

v = ZTD * v;
v1 = ZTD * v1;
v2_d = ZTD * v2_d;
v3 = ZTD * v3;
v4 = ZTD * v4;

figure(6)
plot(inc,v(1:len),inc,v1(1:len),inc,v2_d(1:len),inc,v3(1:len),inc,v4(1:len));
title("几种映射函数对比(局部图)");
xlabel('入射角/°');
ylabel('时延/mm');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');
