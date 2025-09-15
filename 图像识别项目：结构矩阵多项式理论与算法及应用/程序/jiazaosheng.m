clc
clear
close all
load('Georgia_Tech_face_database.mat');
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
    img = uint8(img); % ��img�������
    img_noise = img; % ��img_noise��ʼ��Ϊimg
    rand = unidrnd(11,1)+4; % ����һ��5-15֮������������������Ĵ�СΪrand * rand
    % ���ѡ�����������Ͻ�����Ϊ��x_rand, y_rand)
    x_rand = unidrnd(44-rand,1); % ����һ��1��(44-rand)�������������Ϊ���������Ͻ������x
    y_rand = unidrnd(33-rand,1); % ����һ��1��(33-rand)�������������Ϊ���������Ͻ������y
    block = img(x_rand:x_rand+rand-1,y_rand:y_rand+rand-1,:); % �������������Ŀ�
    block_noise = imnoise(block,'salt & pepper',1); % �������鶼���Ͻ�������
    img_noise(x_rand:x_rand+rand-1,y_rand:y_rand+rand-1,:) = block_noise;
    temp = reshape(img_noise,44*33,3);
    Xr_noise(i,:) = temp(:,1);
    Xg_noise(i,:) = temp(:,2);
    Xb_noise(i,:) = temp(:,3);
end
Xr_original = Xr(sel,:);
Xg_original = Xg(sel,:);
Xb_original = Xb(sel,:);


%% ��ʾ��������֮���ͼ��
numb = 15;   % Ҫ��ʾ�ĵ�num��ͼ��
img_color_noise = zeros(44,33,3);
r = Xr_noise(numb,:);  r = reshape(r,44,33);
g = Xg_noise(numb,:);  g = reshape(g,44,33);
b = Xb_noise(numb,:);  b = reshape(b,44,33);
img_color_noise(:,:,1) = r;
img_color_noise(:,:,2) = g;
img_color_noise(:,:,3) = b;
figure
imshow(uint8(img_color_noise))

%% ��ʾ��������֮ǰ��ͼ��
img_color_original = zeros(44,33,3);
r_o = Xr_original(numb,:); r_o = reshape(r_o,44,33);
g_o = Xg_original(numb,:); g_o = reshape(g_o,44,33);
b_o = Xb_original(numb,:); b_o = reshape(b_o,44,33);
img_color_original(:,:,1) = r_o;
img_color_original(:,:,2) = g_o;
img_color_original(:,:,3) = b_o;
figure
imshow(uint8(img_color_original))




% X=[101 102 103 104 105 106 107 108 109 110]; %ԭ����10����
% R=randperm(9); %ѡ��3��������
% % Xnew=[X(R(1)) X(R(2)) X(R(3))] %�����Ŷ�Ӧָ��ɵ�������
% Xnew = X(R(1:3))
