function Ans=fun_ti_plus_2(t,t0,T1,T0,hc,k,X)%%%�޵�����̽��
%UNTITLED �˴���ʾ�йش˺�����ժҪ
%   �˴���ʾ��ϸ˵��
Ans=T1+exp(-1*(hc./(k.*X)).*(t-t0)+log(T0-T1));


end

