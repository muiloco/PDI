colorida = imread('lena.jpg');
original = rgb2gray(colorida); 
c = original * 2;
[x,y] = size(colorida);
range = 50;
contador = 1;
for i = 1:x
    for j = 1:y
        if j < 256
            original(i,j) = colorida(i,j);
        end
    end
end
imshow(colorida);
figure;
imshow(original);
