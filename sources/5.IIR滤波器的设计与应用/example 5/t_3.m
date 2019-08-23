% ��Ƶ�ͨ�����˲�����Ҫ��
% ��ͨ����Ƶ������ 0.2pi rad/s ʱ��������������1dB���ڣ�
% ��Ƶ�� 0.3pi rad/s ~ pi rad/s ֮������˥������15dB��
% ��˫������������˲����� ��ģ���˲������ð��������˲���ԭ�͡�
clc;clear;close all;

rp=1;rs=15;
wp=.2*pi; ws=.3*pi;
Fs=1;
wap=tan(wp/2);
was=tan(ws/2);
[n,wn]=buttord(wap,was,rp,rs,'s');
[z,p,k]=buttap(n);
[bp,ap]=zp2tf(z,p,k);
[bs,as]=lp2lp(bp,ap,wap);
[bz,az]=bilinear(bs,as,Fs/2);
[h,w]=freqz(bz,az,256);
plot(w,abs(h));grid on;
xlabel('wp=0.2\pi ws=0.3\pi');
title('��ͨ�����˲���');
prove;
