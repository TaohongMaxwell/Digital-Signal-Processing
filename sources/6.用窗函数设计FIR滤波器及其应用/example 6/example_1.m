% �ο������ݶ��˲�����ָ��Ҫ�����˥����С��40 dB��ѡ��������
%���ڴ��������FIR�˲���
clc;clear;close all;

wp=0.5*pi;ws=0.66*pi;   %����ָ��
wdelta=ws-wp;           %���ɴ����
N=ceil(3.11*pi/wdelta)  %�˲�������
Nw=2*N+1;               %���ڳ���
wc=(ws+wp)/2;           %��ֹƵ��
win=hanning(Nw);        %��������ʱ����Ӧ
b=fir1(Nw-1,wc/pi,win) %fir1�ǻ��ڼӴ���������λFIR�����˲�����ƺ�����N-1Ϊ�˲����Ľ�����WinΪ���������ǳ���ΪN����������Ĭ���Ǻ����Զ�ȡhamming��
freqz(b,1,512)          %Ϊ��ȡƵ����Ӧ������Ϊb����ĸΪ1
[h,w]=freqz(b,1,512);
figure('Name','Filter of example_1');plot(w,abs(h));

prove_1;
