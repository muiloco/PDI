a = imread('lena.jpg');
b = rgb2gray(a);
tamanho = 5;
mask = [5 5 5 5 5;5 5 5 5 5;5 5 5 5 5;5 5 5 5 5;5 5 5 5 5];
fator = tamanho*tamanho;
[w, h] = size(b);
ImagemMascarada = uint8(conv2(double(b), mask/fator));
imshow(ImagemMascarada);