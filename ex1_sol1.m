% load image
I = imread('peppers.png');

imshow(I)

%% Task a)
%close all
figure
I1 = rgb2gray(I);
imshow(I1)
%% Task b)
figure
imshow(I(:,:,1))
%% Task c)
%close all
I2 = I;
I2(:,:,2) = I2(:,:,2)+50;
imshow(I)
figure
imshow(I2)
%% Task d)
%close all
R = I(:,:,1);
G = I(:,:,2);
B = I(:,:,3);
I3 = cat(3, B, G, R);
%% Task e)
subplot(2,2,1)
imshow(I)
subplot(2,2,2)
imshow(I1)
subplot(2,2,3)
imshow(I2)
subplot(2,2,4)
imshow(I3)