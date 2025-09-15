function Ans =cfK_2(T,n)
%UNTITLED6 此处显示有关此函数的摘要
%   此处显示详细说明
%输入的T为摄氏度
load('K.mat');

Tto=[Tj1;Tj2;Tj3;Tj4;Tj5];
Tmin=min(Tto);
Tmax=max(Tto);
switch n
    case {1}
        if(T>=min(Tj1)&T<=max(Tj1))
            Ans=Tk1(T);
        end
        if(T>=max(Tj1)&T<=max(Tj2))
            Ans=Tk2(T);
        end
         if(T>=max(Tj2)&T<=max(Tj3))
             Ans=Tk3(T);
         end
         if(T>=max(Tj3)&T<=max(Tj4))
             Ans=Tk4(T);
         end
    case {2}
         if(T>=max(Tj4)&T<=max(Tj5))
             Ans=Tk5(T);
         end
    otherwise
            Ans=-1;
end
if(T<=Tmin||T>=Tmax)
    Ans=-1;
    srt='*********************************'
end
if(imag(T)~=0)
        Ans=-1;
    srt='*********************************'
end


end

