clear
clc

%% ����������
m=input('�������������');
n=input('�������������');
% n=input('���������β�����');
beta=zeros(m*n,1);
k=1;
% ��ʼ״̬�����루�Ѿ���˳���źã�
while k~=0
    k=input('�������ŵƵı�ţ����������0��������ֱ�Ӱ�0��');
    if k~=0
        beta(k)=1;
    end
end

A=coe_f2(m,n);
Stair=gauss_f2(A,beta,m*n);
sol=printsol(Stair,m*n+1);
x=[];
for k=1:m*n
    if sol(k)==1
        x=[x k];
    end
end
disp(Stair)
disp(x)