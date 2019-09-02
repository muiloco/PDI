colorida = imread('lena.jpg');
original = rgb2gray(colorida); 
c = original * 2;
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
% Opeação de Normalização da imagem
resultante = (255/(maximo-minimo))*(c-minimo);

imshow(resultante);
final = resultante - original;
histogram(original);