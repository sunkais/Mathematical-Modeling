function f=N(x,xx,yy)
%�˺�������ʵ��Newton��ֵ������ֵf�ǲ�ֵ���
%�˴���xΪ����ĺ���ֵ��Ӧ���Ա���
%xxΪ��ֵ����Ա�����ɵ�������
%yyΪ��ֵ����������ɵ�������
[m,n]=size(xx);
a=chashang(xx,yy);
for i=1:n
    if(i==1)
        f=a(i,2);
    else
        f=f+a(i,i+1)*nw(x,i-1,xx);
end
end

