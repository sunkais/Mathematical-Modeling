clear all%��ԭ���ݽ��д���õ��µ�����
clc
load FERET_DVD2_Thumbnail_ppm.mat
x=[];
x1=[];
for i=1:269
    a=find(y==i);
    if length(a)>10 %ÿ����ͼƬ����
        a1=a(:,1:10);
    else
        a1=[];
    end
    x=[x;a1];%ÿ��Ϊһ���˵�����ͼƬ
    x1=[x1,a1];%��������
end
%�����µ�����
Xr_xin=Xr(x1,:);
Xg_xin=Xg(x1,:);
Xb_xin=Xb(x1,:);
[m,n]=size(x);%m,n�ֱ�Ϊ�����ˣ�ÿ���˶�����ͼƬ
yy=[];
for j=1:m
    label=ones(1,10)*j;
    yy=[yy,label];
end
y_xin=yy;
save xin_FERET_DVD2_Thumbnail_ppm.mat   height width  path_fn  y_xin Xr_xin Xg_xin Xb_xin




