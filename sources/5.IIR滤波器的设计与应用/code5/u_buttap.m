%��Ʒǹ�һ����������ģ���ͨ�˲���ԭ���ӳ���
function [b,a]=u_buttap(N,OmegaC)
[z,p,k]=buttap(N);% z��p��k�ֱ�����Ƴ��� �ļ��㡢��㼰���档
p=p*OmegaC; %�ǹ�һ��
k=k*OmegaC^N;
B=real(poly(z));
b0=k;
b=k*B; % ��������
a=real(poly(p)); % ��ĸ����
