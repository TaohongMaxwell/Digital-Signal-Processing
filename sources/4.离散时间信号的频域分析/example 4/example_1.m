% DTFT
% �ο�һ��������ɢʱ�丵��Ҷ�任��������ͼ��
% ��֪���޳�����x(n)={1,2,3,4,5}
clf;clear;
n=-1:3; x=1:5; k=0:500;
w=(pi/500)*k; X=x*(exp(-j*2*pi/500)).^(n'*k);

magX=abs(X);angX=angle(X);
realX=real(X);imagX=imag(X);

subplot(2,2,1);plot(w/pi,magX);grid on;
xlabel('');ylabel('ģֵ ');title('ģֵ����');

subplot(2,2,2);plot(w/pi,angX);grid on;
xlabel('piΪ��λ');ylabel('����');title('��ǲ���');

subplot(2,2,3);plot(w/pi,realX);grid on;
xlabel('');ylabel('ʵ��');title('ʵ������');

subplot(2,2,4);plot(w/pi,imagX);grid on;
xlabel('piΪ��λ');ylabel('�鲿');title('�鲿����');
