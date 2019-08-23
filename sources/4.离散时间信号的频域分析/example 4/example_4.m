% Բ����λ
% �ο���������x(n)=8*(0.4).^n,n����[0,20)��Բ����λ
clf;clear;

N=20;
m=10;
n=0:1:N-1;
x=8*(0.9).^n;
n1=mod((n+m),N);
xm=x(n1+1);

subplot(2,1,1);stem(n,x);
title('original sequence');
xlabel('n');ylabel('x(n)');

subplot(2,1,2);stem(n,xm);
title('circular shift equence');
xlabel('n');ylabel('x((n+10))mod 20');
