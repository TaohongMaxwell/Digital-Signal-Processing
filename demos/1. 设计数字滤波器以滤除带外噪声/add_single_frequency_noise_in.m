% ����1KHz��Ƶ�������������˲� 
% 1KHz���������������ܲ�����Ƶ�ʷ�Χ֮��
% ��ʹ��խ�������˲������ݲ�����������д���
% ���ۣ�����Ч����̫�ã�����������ͬʱ��Ҳ������һ��������

% ����1KHz��Ƶ����
n2=cos(2*pi*1000/fs*n);
N2=fft(n2,L);

x_n2=x+n2';
X_n2=fft(x_n2,L);

figure('Name','����1KHz��Ƶ������������');
set(gcf,'outerposition',get(0,'screensize'));

subplot(231);plot(n2);
title('1KHz������ʱ����ͼ');
grid on;
subplot(234);plot(f,abs(N2(1:L/2)));
title('1KHz������Ƶ����ͼ');
xlabel('Ƶ��/Hz������5KHz��');
ylabel('���ȣ�����4500��');
axis([0 5*1000 0 4500]);
grid on;
%FIR_BS_IN Returns a discrete-time filter object.
% FIR Window Bandstop filter designed using the FIR1 function.

% All frequency values are in Hz.
Fs = 48000;  % Sampling Frequency

Fpass1 = 800;            % First Passband Frequency
Fstop1 = 900;            % First Stopband Frequency
Fstop2 = 1100;            % Second Stopband Frequency
Fpass2 = 1200;            % Second Passband Frequency
Dpass1 = 0.057501127785;  % First Passband Ripple
Dstop  = 0.001;           % Stopband Attenuation
Dpass2 = 0.057501127785;  % Second Passband Ripple
flag   = 'scale';         % Sampling Flag

% Calculate the order from the parameters using KAISERORD.
[N,Wn,BETA,TYPE] = kaiserord([Fpass1 Fstop1 Fstop2 Fpass2]/(Fs/2), [1 ...
    0 1], [Dpass1 Dstop Dpass2]);

% Calculate the coefficients using the FIR1 function.
b  = fir1(N, Wn, TYPE, kaiser(N+1, BETA), flag);
Hd = dsp.FIRFilter( ...
    'Numerator', b);

% [EOF]



y=fftfilt(b,x_n2);
Y=fft(y,L);


subplot(232);plot(x_n2);
title('����1KHz������������ź�ʱ����');
% axis([0 fs -.6 .8]);
grid on;
subplot(235);plot(f,abs(X_n2(1:L/2)));
title('����1KHz������������ź�Ƶ����');
xlabel('Ƶ��/Hz������5KHz��');
ylabel('���ȣ�����4500��');
axis([0 5*1000 0 4500]);
grid on;

subplot(233);plot(y);
title('�ݲ���������ź�ʱ����');
% axis([0 1000000 -.6 .8]);
grid on;
subplot(236);plot(f,abs(Y(1:L/2)));
title('�ݲ���������ź�Ƶ����');
xlabel('Ƶ��/Hz������5KHz��');
ylabel('���ȣ�����4500��');
axis([0 5*1000 0 4500]);
grid on;

% sound(y,fs);
% pause(21);