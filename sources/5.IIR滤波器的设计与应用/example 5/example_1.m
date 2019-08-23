clc;clf;clear;

Wp=30;Ws=50;Rp=1;As=30;               %����ָ��
Ripple=10^(-Rp/20);
Attn=10^(-As/20);
[b,a]=afd_butt(Wp,Ws,Rp,As)           %�������ȵ�ͨ�˲����ӳ���
[db,mag,pha,w]=freqs_m(b,a,50);       %�����Ƶ��Ӧ
[ha,x,t]=impulse(b,a);                %����ģ���˲����ĵ�λ������Ӧ
figure(1);clf;
subplot(2,2,1);plot(w,mag);title('Magnitude Response');
xlabel('Analog frequency in rad/s'); ylabel('H');
axis([0,50,0,1.1]);grid;
subplot(2,2,2);plot(w,db);title('Magnitude in dB');
xlabel('Analog frequency in rad/s');
ylabel('decibels');
axis([0,50,-40,5])
grid
subplot(2,2,3);plot(w,pha/pi);title('Phase Response');
xlabel('Analog frequency in rad/s');
ylabel('radians');
axis([0,50,-1.1,1.1])
grid
subplot(2,2,4);plot(t,ha);title('Impulse Response');
xlabel('time in seconds');
ylabel('ha(t)');
axis([0,max(t)+0.05,min(ha),max(ha)+0.025]);
grid
