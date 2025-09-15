function Ans=check_2(in,t,newTJ)
%UNTITLED12 此处显示有关此函数的摘要
%   此处显示详细说明
Ans=0;
a1=max(abs(diff(newTJ(3:end))/0.5));%导数绝对值<=3
temt=t(1:in);
temTJ=newTJ(1:in);
t1=temt(temTJ>=150&temTJ<=190);
a2=max(t1)-min(t1);%温度在150℃与190℃的时间
t2=t(newTJ>=217);
a3=max(t2)-min(t2);%温度大于217?C的时间
a4=max(newTJ);%峰值
if(a1<=3&&a2>=60&&a2<=120&&a3>=40&&a3<=90&&a4>=240&&a4<=250)
    Ans=1;
end
a1;
a2;
a3;
a4;

end

