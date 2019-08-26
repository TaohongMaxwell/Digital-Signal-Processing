% DFT
% ��Ϥ��ɢ����Ҷ�任�ĸ��������
% �ο�һ��x(n)=sin(n*pi/8)+sin(n*pi/4)��һ��N=16�����У������丵��Ҷ�任
clf;clear;

N=16; n=0:N-1;
xn=sin(n*pi/8)+sin(n*pi/4);
k=0:1:N-1;

WN=exp(-j*2*pi/N); nk=n'*k;
WNnk=WN.^nk; Xk=xn*WNnk;

subplot(2,1,1);stem(n,xn);
title('x[n] sequense');

subplot(2,1,2);stem(k,abs(Xk));
title('abs of X[k] sequense');
