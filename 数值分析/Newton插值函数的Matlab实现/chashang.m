function a=chashang(xx,yy)
%此函数用于求Newton插值法的差商表，返回值是差商表所组成的矩阵
%xx为插值点的自变量组成的行向量
%yy为插值点的因变量组成的行向量
[m,n]=size(xx);
a=zeros(n,n+1);%先创建一个矩阵
a(:,1)=xx';
a(:,2)=yy';
for j=3:n+1%i代表行标，j代表列标
    for i=j-1:n
        a(i,j)=(a(i,j-1)-a(i-1,j-1))/(a(i,1)-a(i-(j-2),1));%i-(j-2)是一个关键
    end
end
end

