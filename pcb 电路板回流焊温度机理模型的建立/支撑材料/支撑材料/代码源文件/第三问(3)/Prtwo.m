function [index,t,newTJ] =Prtwo(u,toT)
%UNTITLED14 此处显示有关此函数的摘要
%   此处显示详细说明
%u=78*1e-2/60;
load('CH.mat');
l=0.2;
X=0.15*1e-3/2;
Ftime=hF(u);
%a=load('data2.txt');

%toT=[173 198 230 257 25];
count=2;
count2=1;
[Ans,index]= hF(u);
Ftime=Ans;
t=Ftime;
T0=34.9+273;

while(1)
    if(count==index(count2,2))
        count2=count2+1;
    end
    
    
    if(count2==5)
        tmp_k(count)=Tk5_Plus_5(T0-273);
    else
        tmp_k(count)=cfK(T0-273,1);%迭代变化量
    end
    
    
    T1=toT(count2)+273;
    t0=t(count-1);
    hc(count)=funairhc_simple(T0-273,u,l);%迭代变化量,T0-273是因为输入的是摄氏度
    
    if(count2~=5)
    T=fun_ti_plus(t(count),t0,T1,T0,hc(count),tmp_k(count),X);
    else
    T=fun_ti_plus_2(t(count),t0,T1,T0,hc(count),tmp_k(count),X);
    end
    
    trT=T-T0;%T0的增量
    T0=T0+trT;%刷新T0

    
    count=count+1;
    
    TJ(count)=T;
      
    if(count==index(end,2))
        break;
    end
   
end
newTJ=TJ-273+CH;

end

