function f=L(x,xx)
%�˺�����������������Lagrange�Ĳ�ֵ������������ֵΪ��ֵ����������ɵ�1*n�ľ���nΪ��ֵ�������
%�˴���xΪ����ĺ���ֵ��Ӧ���Ա�����Ҳ����ֱ��������ű���x
%xxΪ��ֵ����Ա�����ɵ�������
[m,n]=size(xx);
%f=zeros(size(xx));ɾȥ���м�����һ�д��룬ʹ�ú�������ֱ��������ű���x��
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


