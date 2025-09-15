clc
clear
close all
load('Georgia_Tech_face_database.mat');
%% 共50人，每人15张图，每人随机选择3张
sel = []; %选择结果（750张选150张）
for i=1:50
    R = randperm(15);
    ind = (15*(i-1)+1):(15*i);
    ind = ind(R(1:3));
    sel = [sel ind];
end
%% 加入椒盐噪声块大小5*5 -- 15*15 
img = zeros(44,33,3); % 每张彩色人脸图像大小为44*33*3
img_noise = zeros(44,33,4); % 加入噪声之后的人脸图像
% Xr_noise,Xg_noise,Xb_noise分别为加入噪声之后的图像拉成向量的R G B 三个通道数据
Xr_noise = zeros(length(sel),44*33); 
Xg_noise = zeros(length(sel),44*33);
Xb_noise = zeros(length(sel),44*33);
% Xr_original,Xg_original,Xb_original为加入噪声之前的数据(顺序与加入噪声之后的数据相对应）
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
    img = uint8(img); % 将img变成整数
    img_noise = img; % 将img_noise初始化为img
    rand = unidrnd(11,1)+4; % 产生一个5-15之间的随机整数，噪声块的大小为rand * rand
    % 随机选择噪声块左上角坐标为（x_rand, y_rand)
    x_rand = unidrnd(44-rand,1); % 产生一个1到(44-rand)的随机整数，作为噪声块左上角坐标的x
    y_rand = unidrnd(33-rand,1); % 产生一个1到(33-rand)的随机整数，作为噪声块左上角坐标的y
    block = img(x_rand:x_rand+rand-1,y_rand:y_rand+rand-1,:); % 即将加入噪声的块
    block_noise = imnoise(block,'salt & pepper',1); % 将整个块都加上椒盐噪声
    img_noise(x_rand:x_rand+rand-1,y_rand:y_rand+rand-1,:) = block_noise;
    temp = reshape(img_noise,44*33,3);
    Xr_noise(i,:) = temp(:,1);
    Xg_noise(i,:) = temp(:,2);
    Xb_noise(i,:) = temp(:,3);
end
Xr_original = Xr(sel,:);
Xg_original = Xg(sel,:);
Xb_original = Xb(sel,:);


%% 显示加入噪声之后的图像
numb = 15;   % 要显示的第num个图像
img_color_noise = zeros(44,33,3);
r = Xr_noise(numb,:);  r = reshape(r,44,33);
g = Xg_noise(numb,:);  g = reshape(g,44,33);
b = Xb_noise(numb,:);  b = reshape(b,44,33);
img_color_noise(:,:,1) = r;
img_color_noise(:,:,2) = g;
img_color_noise(:,:,3) = b;
figure
imshow(uint8(img_color_noise))

%% 显示加入噪声之前的图像
img_color_original = zeros(44,33,3);
r_o = Xr_original(numb,:); r_o = reshape(r_o,44,33);
g_o = Xg_original(numb,:); g_o = reshape(g_o,44,33);
b_o = Xb_original(numb,:); b_o = reshape(b_o,44,33);
img_color_original(:,:,1) = r_o;
img_color_original(:,:,2) = g_o;
img_color_original(:,:,3) = b_o;
figure
imshow(uint8(img_color_original))




% X=[101 102 103 104 105 106 107 108 109 110]; %原来的10个数
% R=randperm(9); %选择3个随机序号
% % Xnew=[X(R(1)) X(R(2)) X(R(3))] %随机序号对应指组成的新数组
% Xnew = X(R(1:3))
