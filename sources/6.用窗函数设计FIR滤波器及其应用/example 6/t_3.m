% ��3�����һ�������˲���
% ����Ϊ0.4��0.65 ������Ϊ34
% ����ʹ��һ���б�ѩ�򴰣�����Ĭ�ϵĴ��������бȽ�
clc;clear;close all;

w1=0.4; w2=0.65;
alpha=40; N=34;
win=chebwin(N+1,alpha);
b=fir1(N,[w1,w2],'stop',win);
freqz(b,1,512)
[h,w]=freqz(b,1,512);
figure('Name','Filter of t_3');plot(w,abs(h));

prove_t_3;