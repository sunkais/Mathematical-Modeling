function Ans=funairPr(x)
%UNTITLED5 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��


       p1 =   3.479e-07 ;
       p2 =  -0.0002105 ;
       p3 =      0.7069 ;
        Ans= p1.*x.^2 + p2.*x + p3;

        %{
        Goodness of fit:
  SSE: 8.086e-06
  R-square: 0.9953
  Adjusted R-square: 0.9947
  RMSE: 0.0007342
        %}
end

