function A = coehex_f2(n)
%COEHEX_F2 ���������ε����Ӧ��״̬ת��ϵ��
%   n Ϊ�����ε������
    %% ��������
    Coor=[];
    for k=1:n
        for h=1:n+k-1
            v=[k,h];
            Coor=[Coor;v];
        end
    end
    for k=1:n-1
        for h=1:2*n-k-1
            v=[n+k,h+k];
            Coor=[Coor;v];
        end
    end
    %% ����ϵ������
    C=[];
    for k=1:size(Coor,1)
        v=zeros(1,size(Coor,1));
        for h=1:size(Coor,1)
            if (Coor(k,1)-Coor(h,1))^2+(Coor(k,2)-Coor(h,2))^2<=2 && ... 
                    (Coor(k,1)-Coor(h,1))*(Coor(k,2)-Coor(h,2))>=0
                v(h)=1;
            end
        end
        C=[C v'];
    end 
    A=C;
end

