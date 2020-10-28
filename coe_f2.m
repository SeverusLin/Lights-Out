function A = coe_f2(m,n)
%COE_F2 求状态转移的系数矩阵
%   m，n为灯阵行列的规格
    A=[];
    for k=1:m*n
        C=zeros(m*n,1);
        C(k)=1;
        if k-m>0
            C(k-m)=1;
        end
        if k+m<=m*n
            C(k+m)=1;
        end
        if mod(k,m)~=0
            C(k+1)=1;
        end
        if mod(k,m)~=1 && m~=1
            C(k-1)=1;
        end
        A=[A C];
    end  
end

