function 	ff=LL_char(x,xx,yy)
%此函数用于实现Lagrange插值，返回值为插值结果
%此处的x为所求的函数值对应的自变量
%xx为插值点的自变量组成的行向量
%yy为插值点的因变量组成的行向量
[m,n]=size(xx);
f=L_char(x,xx);
ff=0;
for i=1:n
    ff=f(i)*yy(i)+ff;
end
end

