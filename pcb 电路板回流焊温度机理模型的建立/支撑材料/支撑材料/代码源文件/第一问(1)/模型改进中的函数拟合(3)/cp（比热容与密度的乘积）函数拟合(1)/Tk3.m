function Ans =Tk3(x)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明

    

       a =   1.553e+18  ;
       b =     -0.1594  ;
       c =   1.886e+06  ;
       d =   -0.006749  ;
       Ans = a.*exp(b.*x) + c.*exp(d.*x);
%{
Goodness of fit:
  SSE: 7.354e+08
  R-square: 0.9996
  Adjusted R-square: 0.9996
  RMSE: 3592
       %}
end

