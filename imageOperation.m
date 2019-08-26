a = imread('lena.jpg');
b = rgb2gray(a); 
imshow(b);
c = b * 2;
figure;
imshow(c);
