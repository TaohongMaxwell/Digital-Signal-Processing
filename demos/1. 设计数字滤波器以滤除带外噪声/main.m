clc;close all;clear;

% fftfilt
% FFT-based FIR filtering using overlap-add method

[x,fs]=audioread('audio20s.mp3');

sound_processor; %��ƵԤ�ȴ���

add_single_frequency_noise_out;%����4KHz��Ƶ�������������˲�
add_single_frequency_noise_in;%����1KHz��Ƶ�������������ݲ�
add_all_frequency_noise;%����ȫƵ���������������˲�

% close all;