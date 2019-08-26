clc;clf;clear;close all;

fp=100;fst=300;Fs=1000;
rp=3;rs=20;
wp=2*pi*fp/Fs;
ws=2*pi*fst/Fs;
Fs=Fs/Fs;  % let Fs=1   
wap=tan(wp/2);was=tan(ws/2);% Ԥ���乫ʽ
[n,wn]=buttord(wap,was,rp,rs,'s') ;% ��Ƶ�Чģ���˲���
[z,p,k]=buttap(n); 
[bp,ap]=zp2tf(z,p,k)               % ���ģ���ͨԭ���˲���
[bs,as]=lp2lp(bp,ap,wap)   ;     % ��ģ���ͨԭ���˲���ת��Ϊ��ͨ�˲���
[bz,az]=bilinear(bs,as,Fs/2)   % ʵ��˫���Ա任������ģ���˲��� �õ������˲���
[h,w]=freqz(bz,az,256,Fs*1000);
plot(w,abs(h));grid on;
xlabel('wp=100  ws=300');
title('���ֵ�ͨ�˲���');

prove; % Prove that this filter work correctly
