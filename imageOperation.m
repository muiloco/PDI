a = imread('lena.jpg');
b = rgb2gray(a); 
c = b * 2;
d = c * 2;
[x,y] = size(c);
maximo = c(1,1);
minimo = c(1,1);
for i = 1:x
    for j = 1:y
        if c(i,j) < minimo
            minimo = c(i,j);
        end
        if c(i,j) > maximo
            maximo = c(i,j);
        end
    end
end

final = (255/(maximo-minimo))*(c-minimo);
imshow(final);
figure;
imshow(c)