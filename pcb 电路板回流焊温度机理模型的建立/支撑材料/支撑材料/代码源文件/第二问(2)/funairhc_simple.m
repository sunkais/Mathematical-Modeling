function Ans= funairhc_simple(T,u,l)
%UNTITLED6 �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
Ans=(funairlamde(T)./l).*0.664.*(u.*l./funairv(T)).^(1/2).*(funairPr(T)).^(1/3);

end

