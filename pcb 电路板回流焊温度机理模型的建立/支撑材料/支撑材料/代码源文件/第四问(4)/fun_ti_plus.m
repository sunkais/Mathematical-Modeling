function Ans=fun_ti_plus(t,t0,T1,T0,hc,k,X)
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
Ans=T1-exp(-(hc./(k.*X)).*(t-t0)+log(T1-T0));


end

