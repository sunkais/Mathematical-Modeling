function Ans=Tk5_Plus_5(x)
%UNTITLED9 此处显示有关此函数的摘要
%   此处显示详细说明

       a1 =   3.452e+10  ;
       b1 =       311.8  ;
       c1 =       24.43  ;
       a2 =   3.094e+24  ;
       b2 =        5520  ;
       c2 =       823.4 ;
     Ans =  a1.*exp(-((x-b1)./c1).^2) + a2.*exp(-((x-b2)./c2).^2);
end

%{

Goodness of fit:
  SSE: 8.647e+11
  R-square: 0.9973
  Adjusted R-square: 0.9972
  RMSE: 1.096e+05
%}
%{
clear
clc
close all
load('K.mat')
k1(1)=k1(2)
k2(1)=k2(2)

k3(1)=k3(2)
k4(1)=k4(2)
k5(1)=k5(2)
k5(2)=k5(3)
k5
t1
t2
save K.mat
size(k5)
Tj5=Tj5(20:end-60)
k5=k5(20:end-60)
cftool
%}