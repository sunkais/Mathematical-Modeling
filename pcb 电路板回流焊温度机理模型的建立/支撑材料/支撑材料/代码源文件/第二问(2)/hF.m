function [Ans,index]= hF(u)
%UNTITLED5 此处显示有关此函数的摘要
%   此处显示详细说明
%u的单位为m
dis=[25 30.5 5];
sumdis=[dis(2)*5+dis(3)*5 dis(2)+dis(3) dis(2)+dis(3) dis(2)*2+dis(3)*2 dis(2)*2+dis(3)+dis(1)];
%u=70*1e-2/60;
fenT=((sumdis)*1e-2)./u;
fenT=[dis(1)*1e-2/u fenT];
[mf,nf]=size(fenT);
nf=max(mf,nf);
for i=1:nf
lfenT(i)=sum(fenT(1:i));
end
lfenT;
Total=(dis(1)*2+dis(2)*11+dis(3)*10)*1e-2;
Totime=Total/u;
time=0:0.5:Totime;
count=1;
for i=1:5%一共有5个分区
    Ftime{i}=time(time>=lfenT(count)&time<=lfenT(count+1));
    count=count+1;
end
index=[];
Ans=[];
counten=0;
for i=1:5
    [mt,nt]=size(Ftime{i});
    counten=counten+nt;
    index=[index;[counten-(nt-1),counten]];
    Ans=[Ans,Ftime{i}];
end
end

