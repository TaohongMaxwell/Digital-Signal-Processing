% Generate a sinusoidal input signal
clf;    n = 0:200;    x = cos(2*pi*0.05*n);
% Compute the output signal
x1 = [x 0 0];		 % x1[n] = x[n+1] 
x2 = [0 x 0];		 % x2[n] = x[n]
x3 = [0 0 x];		 % x3[n] = x[n-1]
y = x2.*x2-x1.*x3;    y = y(2:202);
% Plot the input and output signals
subplot(2,1,1);stem(n, x);
xlabel('Time index n');ylabel('Amplitude');
title('Input Signal');grid on;
subplot(2,1,2);stem(n,y);
xlabel('Time index n');ylabel('Amplitude');
title('Output signal');grid on;
axis([-5 205 -0.5 1.5]);
