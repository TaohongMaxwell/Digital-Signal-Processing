% ���һ���������ȸ�ͨ�˲�����
% Ҫ��ͨ����ֹƵ��Ϊ 0.6pi ��ͨ����˥��������1dB��
% �����ʼƵ��Ϊ 0.4pi �������˥����С��15dB��T=1��
clc;clear;close all;

rp=1;rs=15;
wp=.6*pi; ws=.4*pi;
Fs=1;
wap=tan(wp/2);
was=tan(ws/2);
[n,wn]=buttord(wap,was,rp,rs,'s');
[z,p,k]=buttap(n);
[bp,ap]=zp2tf(z,p,k);
[bs,as]=lp2hp(bp,ap,wap);
[bz,az]=bilinear(bs,as,Fs/2);
[h,w]=freqz(bz,az,256);
plot(w,abs(h));grid on;
xlabel('ws=0.4\pi wp=0.6\pi');
title('�������ȸ�ͨ�˲���');

prove;
