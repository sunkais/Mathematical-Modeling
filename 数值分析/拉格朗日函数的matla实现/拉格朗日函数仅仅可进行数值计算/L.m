function f=L(x,xx)
%此函数的作用是用于求Lagrange的插值基函数，返回值为插值基函数所组成的1*n的矩阵（n为插值点个数）
%此处的x为所求的函数值对应的自变量
%xx为插值点的自变量组成的行向量
[m,n]=size(xx);
f=zeros(size(xx));
temp=1;
for k=1:n
    for i=1:n
        if(k~=i)
        temp=temp*(xx(k)-xx(i));
        end
    end
    f(k)=w(x,xx)/((x-xx(k))*temp);
    temp=1;
end
end




