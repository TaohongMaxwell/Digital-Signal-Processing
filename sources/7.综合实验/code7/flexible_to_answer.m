% ѡ���⣬��������
clc;close all;

% bp_hamming;
lp_rectan;
lp_btwz;

yrec=filter(b1,1,x);
y=filter(b,1,x);
[hrec,wrec]=freqz(yrec,1,512);
[h,w]=freqz(y,1,512);

figure('Name','��ͬ�������˲�Ч���Ա�');
set(gcf,'outerposition',get(0,'screensize'));
subplot(321);stem(n,yrec);
title('���δ�ʱ��');grid on;
subplot(322);plot(wrec/pi,abs(hrec));
title('���δ�Ƶ��');grid on;

subplot(323);stem(n,y);
title('�Ա��˲���ʱ��');grid on;
subplot(324);plot(w/pi,abs(h));
title('�Ա��˲���Ƶ��');grid on;

subplot(325);stem(n,abs(yrec-y));
title('ʱ��Ա�');
% axis([0 100 0 2]);
grid on;
subplot(326);
plot(w/pi,abs( abs(hrec)-abs(h) ) );
title('Ƶ��Ա�');grid on;