imgA = [41 35 30 ; 0 0 43; 0 0 45]
imgB = [250 0 0 ; 251 0 0 ; 245 246 248]
imgC = zeros(3)

[x,y] = size(imgA);
for i = 1:x
    for j = 1:y
        a = dec2bin(imgA(i,j));
        b = dec2bin(imgB(i,j));
        imgC(i,j) = bin2dec(a & b)
    end
end