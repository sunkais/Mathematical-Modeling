function f=N(x,xx,yy)
%此函数用于实现Newton插值，返回值f是插值结果
%此处的x为所求的函数值对应的自变量
%xx为插值点的自变量组成的行向量
%yy为插值点的因变量组成的行向量
[m,n]=size(xx);
a=chashang(xx,yy);
for i=1:n
    if(i==1)
        f=a(i,2);
    else
        f=f+a(i,i+1)*nw(x,i-1,xx);
end
end

