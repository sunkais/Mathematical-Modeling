clc
clear
close all
load('Georgia_Tech_face_database.mat');
%% ��ֹ������ı�ԭʼ����
Xrr = Xr;
Xgg = Xg;
Xbb = Xb;
%% ��50�ˣ�ÿ��15��ͼ��ÿ�����ѡ��3��
sel = []; %ѡ������750��ѡ150�ţ�
for i=1:50
    R = randperm(15);
    ind = (15*(i-1)+1):(15*i);
    ind = ind(R(1:3));
    sel = [sel ind];
end
%% ���뽷���������С5*5 -- 15*15 
img = zeros(44,33,3); % ÿ�Ų�ɫ����ͼ���СΪ44*33*3
img_noise = zeros(44,33,4); % ��������֮�������ͼ��
% Xr_noise,Xg_noise,Xb_noise�ֱ�Ϊ��������֮���ͼ������������R G B ����ͨ������
Xr_noise = zeros(length(sel),44*33); 
Xg_noise = zeros(length(sel),44*33);
Xb_noise = zeros(length(sel),44*33);
% Xr_original,Xg_original,Xb_originalΪ��������֮ǰ������(˳�����������֮����������Ӧ��
Xr_original = zeros(length(sel),44*33);
Xg_original = zeros(length(sel),44*33);
Xb_original = zeros(length(sel),44*33);

for i=1:length(sel)
    num = sel(i);
    R = Xr(num,:); R = reshape(R,44,33);
    G = Xg(num,:); G = reshape(G,44,33);
    B = Xb(num,:); B = reshape(B,44,33);
    img(:,:,1) = R;
    img(:,:,2) = G;
    img(:,:,3) = B;
    img_noise = img; % ��img_noise��ʼ��Ϊimg
    rand = unidrnd(11,1)+4; % ����һ��5-15֮������������������Ĵ�СΪrand * rand
    % ���ѡ�����������Ͻ�����Ϊ��x_rand, y_rand)
    x_rand = unidrnd(44-rand,1); % ����һ��1��(44-rand)�������������Ϊ���������Ͻ������x
    y_rand = unidrnd(33-rand,1); % ����һ��1��(33-rand)�������������Ϊ���������Ͻ������y
    block = img(x_rand:x_rand+rand-1,y_rand:y_rand+rand-1,:); % �������������Ŀ�
    block = uint8(block);
    block_noise = imnoise(block,'salt & pepper',1); % �������鶼���Ͻ�������
    img_noise(x_rand:x_rand+rand-1,y_rand:y_rand+rand-1,:) = block_noise;
    temp = reshape(img_noise,44*33,3);
    Xr_noise(i,:) = temp(:,1);
    Xg_noise(i,:) = temp(:,2);
    Xb_noise(i,:) = temp(:,3);
    Xrr(sel(i),:) = temp(:,1);
    Xgg(sel(i),:) = temp(:,2);
    Xbb(sel(i),:) = temp(:,3);
end
sel = sort(sel);
save('data.mat','Xrr','Xgg','Xbb','sel');

