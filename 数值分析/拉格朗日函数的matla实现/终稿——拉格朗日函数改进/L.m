function f=L(x,xx)
%此函数的作用是用于求Lagrange的插值基函数，返回值为插值基函数所组成的1*n的矩阵（n为插值点个数）
%此处的x为所求的函数值对应的自变量，也可以直接输入符号变量x
%xx为插值点的自变量组成的行向量
[m,n]=size(xx);
%f=zeros(size(xx));删去此行及其下一行代码，使得函数可以直接输入符号变量x；
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


