function A = coehex_f2(n)
%COEHEX_F2 生成六边形灯阵对应的状态转移系数
%   n 为六边形灯阵层数
    %% 生成坐标
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
    %% 生成系数矩阵
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

