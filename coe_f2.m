function A = coe_f2(m,n)
%COE_F2 ��״̬ת�Ƶ�ϵ������
%   m��nΪ�������еĹ��
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

