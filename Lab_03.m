%% Lab 03 - To perform Operation on digital images
% Name  : Pawan Dilip Sorte
% Roll Number : 63
% Batch : B4
% Date of Performance : 16/05/2023
%%
I = imread('cameraman.tif');
[x,y] = size(I);

figure(1);
imshow(I);
%% 
P = imread('peppers.png');
[x,y,c] = size(P);
figure(2);
imshow(P);
%%
Q = imread('peppers.png');
[x,y,c] = size(Q);
figure(3);
imshow(Q);
Img = rgb2gray(Q);
imshow(Img);
V = imresize(Img,[256,256]);
imshow(V);
imtool(Q);

%% Image Blending 
R = im2double(I);
S = im2double(V);

U = R.*S;
figure(4)
imshow(U);

%% Image Matting
% alpha represents the Matt
W = 0.55*R+(1-0.55)*S
figure(5)
imshow(W);

%%
Z = edge(R);
figure(6)
imshow(Z + R);

%% Histogram
figure(7)
imhist(I);