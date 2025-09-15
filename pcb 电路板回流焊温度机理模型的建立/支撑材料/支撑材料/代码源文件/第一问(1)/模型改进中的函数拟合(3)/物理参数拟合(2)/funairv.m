function Ans=funairv(x)
%UNTITLED2 此处显示有关此函数的摘要
%   此处显示详细说明
       p1 =   8.132e-11  ;
       p2 =   9.169e-08  ;
       p3 =   1.321e-05  ;
      Ans = p1.*x.^2 + p2.*x + p3;
      %{
Goodness of fit:
  SSE: 5.383e-13
  R-square: 0.9997
  Adjusted R-square: 0.9996
  RMSE: 1.894e-07
      %}
end

