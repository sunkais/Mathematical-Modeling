function Ans=check(index,t,newTJ)
%UNTITLED12 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
Ans=0;
a1=max(abs(diff(newTJ(3:end))/0.5));%��������ֵ<=3
temt=t(1:index(4,2));
temTJ=newTJ(1:index(4,2));
t1=temt(temTJ>=150&temTJ<=190);
a2=max(t1)-min(t1);%�¶���150����190���ʱ��
t2=t(newTJ>=217);
a3=max(t2)-min(t2);%�¶ȴ���217?C��ʱ��
a4=max(newTJ);%��ֵ
if(a1<=3&&a2>=60&&a2<=120&&a3>=40&&a3<=90&&a4>=240&&a4<=250)
    Ans=1;
end

end

