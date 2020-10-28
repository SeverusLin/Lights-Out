function sol = printsol(Stair,N)
%PRINTSOL 输出解，N为列数
%  将所得的阶梯型矩阵的解输出
    sol=zeros(1,N-1);
    if rank(Stair(:,1:N-1))<rank(Stair)
        error('Unsolvable')
    else
        for m=1:N-1
            for n=1:N-1
                if Stair(m,n)==1 && Stair(m,N)==1
                   sol(n)=1;
                   break
                end
            end
        end
    end
end

