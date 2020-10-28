clear
clc

%% 输入灯阵情况
m=input('输入矩阵行数：');
n=input('输入矩阵列数：');
% n=input('输入六边形层数：');
beta=zeros(m*n,1);
k=1;
% 初始状态的输入（已经按顺序排好）
while k~=0
    k=input('输入亮着灯的编号，输入完成则按0，若无则直接按0：');
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