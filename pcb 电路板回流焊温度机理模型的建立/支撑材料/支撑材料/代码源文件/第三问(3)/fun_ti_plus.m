function Ans=fun_ti_plus(t,t0,T1,T0,hc,k,X)
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
Ans=T1-exp(-(hc./(k.*X)).*(t-t0)+log(T1-T0));


end

