function 	ff=LL_char(x,xx,yy)
%�˺�������ʵ��Lagrange��ֵ������ֵΪ��ֵ���
%�˴���xΪ����ĺ���ֵ��Ӧ���Ա���
%xxΪ��ֵ����Ա�����ɵ�������
%yyΪ��ֵ����������ɵ�������
[m,n]=size(xx);
f=L_char(x,xx);
ff=0;
for i=1:n
    ff=f(i)*yy(i)+ff;
end
end

