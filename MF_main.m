% -------------------------------------------------------------
% Title:ӳ�亯���Ƚ�
% Author:wwt117@163.com
% Data:2018-6-13
% -------------------------------------------------------------
close all;
clear;
clc;

%% ����

% ����Ǵ�0�ȱ仯��87��
inc = 0:0.5:87;

% ����ֵ
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

%% ��ͼ1
figure(1)
plot(inc,v,inc,v1,inc,v2_d,inc,v3,inc,v4);
title("����ӳ�亯���Ա�");
% ylabel(' ');
xlabel('�����/��');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');


%% ��ͼ2
% ���춥�ӳ�Ϊ2.3�ף��Ա�б�෽�������ʱ�Ӵ�С
ZTD = 2300;%2.3m
v = ZTD * v;
v1 = ZTD * v1;
v2_d = ZTD * v2_d;
v3 = ZTD * v3;
v4 = ZTD * v4;

figure(2)
plot(inc,v,inc,v1,inc,v2_d,inc,v3,inc,v4);
title("�Աȼ���ӳ�亯��б�෽�������ʱ��");
xlabel('�����/��');
ylabel('ʱ��/mm');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');

%% ��ͼ3���ֲ�ͼ��
inc = 60:70;
len = length(inc);
% ����ֵ
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
title("����ӳ�亯���Ա�(�ֲ�ͼ)");
% ylabel(' ');
xlabel('�����/��');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');
%% ��ͼ4���ֲ�ͼ��

v = ZTD * v;
v1 = ZTD * v1;
v2_d = ZTD * v2_d;
v3 = ZTD * v3;
v4 = ZTD * v4;

figure(4)
plot(inc,v(1:len),inc,v1(1:len),inc,v2_d(1:len),inc,v3(1:len),inc,v4(1:len));
title("����ӳ�亯���Ա�(�ֲ�ͼ)");
xlabel('�����/��');
ylabel('ʱ��/mm');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');
%% ��ͼ4���ֲ�ͼ��
inc = 80:87;
len = length(inc);
% ����ֵ
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
title("����ӳ�亯���Ա�(�ֲ�ͼ)");
% ylabel(' ');
xlabel('�����/��');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');
%% ��ͼ6���ֲ�ͼ��

v = ZTD * v;
v1 = ZTD * v1;
v2_d = ZTD * v2_d;
v3 = ZTD * v3;
v4 = ZTD * v4;

figure(6)
plot(inc,v(1:len),inc,v1(1:len),inc,v2_d(1:len),inc,v3(1:len),inc,v4(1:len));
title("����ӳ�亯���Ա�(�ֲ�ͼ)");
xlabel('�����/��');
ylabel('ʱ��/mm');
grid on;
legend({'sec(\theta)','MF1','MF2','MF3','MF4'},'Location','NorthWest');
