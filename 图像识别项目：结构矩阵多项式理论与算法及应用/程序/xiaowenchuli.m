clear all%对原数据进行处理得到新的数据
clc
load FERET_DVD2_Thumbnail_ppm.mat
x=[];
x1=[];
for i=1:269
    a=find(y==i);
    if length(a)>10 %每个人图片个数
        a1=a(:,1:10);
    else
        a1=[];
    end
    x=[x;a1];%每行为一个人的所有图片
    x1=[x1,a1];%所有样本
end
%生成新的数据
Xr_xin=Xr(x1,:);
Xg_xin=Xg(x1,:);
Xb_xin=Xb(x1,:);
[m,n]=size(x);%m,n分别为多少人，每个人多少张图片
yy=[];
for j=1:m
    label=ones(1,10)*j;
    yy=[yy,label];
end
y_xin=yy;
save xin_FERET_DVD2_Thumbnail_ppm.mat   height width  path_fn  y_xin Xr_xin Xg_xin Xb_xin




