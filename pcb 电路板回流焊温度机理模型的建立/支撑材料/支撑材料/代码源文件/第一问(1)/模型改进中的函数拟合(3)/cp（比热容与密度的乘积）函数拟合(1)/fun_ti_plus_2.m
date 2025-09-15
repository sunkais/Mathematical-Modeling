function Ans=fun_ti_plus_2(t,t0,T1,T0,hc,k,X)%%%无道理，试探性
%UNTITLED 此处显示有关此函数的摘要
%   此处显示详细说明
Ans=T1+exp(-1*(hc./(k.*X)).*(t-t0)+log(T0-T1));


end

