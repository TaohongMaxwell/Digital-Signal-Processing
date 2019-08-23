% ��x1(n)=(0.8).^n������n����[0,10]
% ��x2(n)=(0.6).^n������n����[0,18]
% ��Բ�ܾ����N=20��
clf;clc;clear;

n1=0:10; x1=(.8).^n1;
n2=0:18; x2=(.6).^n2;
N=28;

% ����Բ����λ
X1=cirshift(x1,length(x1),N);
X2=cirshift(x2,length(x2),N);
% ����Բ�ܾ��
X=mycirconv(X1,X2,N);

subplot(4,2,1);
stem(n1,x1);grid on;title('x1[n] sequence');

subplot(4,2,2);
stem(n2,x2);grid on;title('x2[n] sequence');

subplot(4,2,[3,4]);
stem(X1);grid on;title('X1[k] sequence');

subplot(4,2,[5,6]);
stem(X2);grid on;title('X2[k] sequence');

subplot(4,2,[7,8]);
stem(X);grid on;title('X[k] sequence');
