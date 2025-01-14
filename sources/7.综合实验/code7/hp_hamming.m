%HIGHPASS Returns a discrete-time filter object.

% MATLAB Code
% Generated by MATLAB(R) 9.1 and the Signal Processing Toolbox 7.3.
% Generated on: 05-Jun-2019 13:07:27

% FIR Window Highpass filter designed using the FIR1 function.

% All frequency values are normalized to 1.

N    = 20;       % Order
Fc   = 0.8;      % Cutoff Frequency
flag = 'scale';  % Sampling Flag

% Create the window vector for the design algorithm.
win = hamming(N+1);

% Calculate the coefficients using the FIR1 function.
b3  = fir1(N, Fc, 'high', win, flag);
Hd = dfilt.dffir(b3);

% [EOF]
