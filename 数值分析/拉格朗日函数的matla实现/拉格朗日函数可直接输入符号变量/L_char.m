function f=L_char(x,xx)
%�˺���֧�������ַ��ͱ���x;
%�˺�����������������Lagrange�Ĳ�ֵ������������ֵΪ��ֵ����������ɵ�1*n�ľ���nΪ��ֵ�������
%�˴���xΪ����ĺ���ֵ��Ӧ���Ա���
%xxΪ��ֵ����Ա�����ɵ�������
[m,n]=size(xx);
temp=1;
for k=1:n
    for i=1:n
        if(k~=i)
        temp=temp*(xx(k)-xx(i));
        end
    end

    f(k)=w_char(x,xx)/((x-xx(k))*temp);
    temp=1;
end
end
