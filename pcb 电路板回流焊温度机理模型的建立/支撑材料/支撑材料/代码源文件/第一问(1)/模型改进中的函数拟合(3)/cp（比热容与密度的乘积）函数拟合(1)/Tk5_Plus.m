function Ans =Tk5_Plus(x)
%UNTITLED3 此处显示有关此函数的摘要
%   此处显示详细说明

       a1 =   8.297e+22;
       b1 =       635.6;
       c1 =       64.98 ;
       a2 =   3.693e+36 ;
       b2 =    1.61e+04 ;
       c2 =        1908 ;
          Ans=  a1*exp(-((x-b1)/c1)^2) + a2*exp(-((x-b2)/c2)^2);

end

