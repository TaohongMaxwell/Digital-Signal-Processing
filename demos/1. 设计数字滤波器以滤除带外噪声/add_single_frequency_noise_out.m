% ����4KHz��Ƶ�������������˲�
% 4KHz���������������ܲ�����Ƶ�ʷ�Χ֮��
% ��ʹ�õ�ͨ�˲���������д���
% ���ۣ�����Ч���ã��ܹ��ڱ���������ͬʱ���ƴ󲿷�����

% ����4KHz��Ƶ����
n1=cos(2*pi*4000/fs*n);
N1=fft(n1,L);

x_n1=x+n1';
X_n1=fft(x_n1,L);

figure('Name','����4KHz��Ƶ������������');
set(gcf,'outerposition',get(0,'screensize'));

subplot(231);plot(n1);
title('4KHz������ʱ����ͼ');
grid on;
subplot(234);plot(f,abs(N1(1:L/2)));
title('4KHz������Ƶ����ͼ');
xlabel('Ƶ��/Hz������5KHz��');
ylabel('���ȣ�����4500��');
axis([0 5*1000 0 4500]);
grid on;

%FIR_LP_OUT Returns a discrete-time filter object.
% FIR Window Lowpass filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = 48000;  % Sampling Frequency

Fpass = 3000;            % Passband Frequency
Fstop = 3500;            % Stopband Frequency
Dpass = 0.057501127785;  % Passband Ripple
Dstop = 0.0001;          % Stopband Attenuation
flag  = 'scale';         % Sampling Flag

% Calculate the order from the parameters using KAISERORD.
[N,Wn,BETA,TYPE] = kaiserord([Fpass Fstop]/(Fs/2), [1 0], [Dstop Dpass]);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);
Hd = dsp.FIRFilter( ...
    'Numerator', b);

% [EOF]

y=fftfilt(b,x_n1);
Y=fft(y,L);

subplot(232);plot(x_n1);
title('����4KHz������������ź�ʱ����');
% axis([0 fs -.6 .8]);
grid on;
subplot(235);plot(f,abs(X_n1(1:L/2)));
title('����4KHz������������ź�Ƶ����');
xlabel('Ƶ��/Hz������5KHz��');
ylabel('���ȣ�����4500��');
axis([0 5*1000 0 4500]);
grid on;

subplot(233);plot(y);
title('�˲���������ź�ʱ����');
% axis([0 1000000 -.6 .8]);
grid on;
subplot(236);plot(f,abs(Y(1:L/2)));
title('�˲���������ź�Ƶ����');
xlabel('Ƶ��/Hz������5KHz��');
ylabel('���ȣ�����4500��');
axis([0 5*1000 0 4500]);
grid on;

% sound(y,fs);
% pause(21);