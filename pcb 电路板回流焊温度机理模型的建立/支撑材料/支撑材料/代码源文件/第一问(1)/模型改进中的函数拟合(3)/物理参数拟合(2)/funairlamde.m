function Ans=funairlamde(x)
%UNTITLED4 此处显示有关此函数的摘要
%   此处显示详细说明
       p1 =  -2.093e-08  ;
       p2 =   7.847e-05  ;
       p3 =     0.02437  ;
          Ans = p1.*x.^2 + p2.*x + p3;

         %{
          
Goodness of fit:
  SSE: 7.569e-08
  R-square: 0.9999
  Adjusted R-square: 0.9999
  RMSE: 7.103e-05
          %}
end

