function a=chashang(xx,yy)
%�˺���������Newton��ֵ���Ĳ��̱�����ֵ�ǲ��̱�����ɵľ���
%xxΪ��ֵ����Ա�����ɵ�������
%yyΪ��ֵ����������ɵ�������
[m,n]=size(xx);
a=zeros(n,n+1);%�ȴ���һ������
a(:,1)=xx';
a(:,2)=yy';
for j=3:n+1%i�����б꣬j�����б�
    for i=j-1:n
        a(i,j)=(a(i,j-1)-a(i-1,j-1))/(a(i,1)-a(i-(j-2),1));%i-(j-2)��һ���ؼ�
    end
end
end

