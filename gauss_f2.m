function Stair = gauss_f2(A,beta,n)
%GAUSS_F2 ����Gauss��Ԫ�������������F_2�ϵ����Է�����
%   Ax=beta,���x, nΪ����A�Ľ���
    A1=[A,beta];
    if sum(sum(A))==0
        Stair=A1;
    else
        if n==1
            Stair=A1;
        else
    %% ѡ��һ����ȫ����
            for C=1:n
                if sum(A(:,C))~=0
                    M=C;
                    break
                end
            end
    %% ѡ��Ԫ��
            if A(1,M)==0
                for L=2:n
                    if A(L,M)~=0
                        A1([1 L],:)=A1([L 1],:);
                        break
                    end
                end
            end
     %% ����Ԫ��
            for L=2:n
                if A1(L,M)~=0
                    A1(L,:)=xor(A1(1,:),A1(L,:));
                end
            end
     %% �������� ���õݹ�
            A1(2:n,M+1:n+1)=gauss_f2(A1(2:n,M+1:n),A1(2:n,n+1),n-1);
     %% ���򻯽�����  
            for L=2:n
                for C=M+1:n
                    if A1(L,C)~=0
                        if A1(1,C)~=0
                            A1(1,:)=xor(A1(1,:),A1(L,:));
                        end
                        break
                    end
                end
            end
            Stair=A1;
        end
    end
end

