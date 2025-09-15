function Ans= funairhc_simple(T,u,l)
%UNTITLED6 此处显示有关此函数的摘要
%   此处显示详细说明
Ans=(funairlamde(T)./l).*0.664.*(u.*l./funairv(T)).^(1/2).*(funairPr(T)).^(1/3);

end

