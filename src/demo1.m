load march.mat
RGB = bayer2rgb(x);
RedMask=[1/4 1/2 1/4;1/2 1 1/2; 1/4 1/2 1/4]
GreenMask=[0 1/4 0;1/4 1 1/4;0 1/4 0]
RedMask=[1/4 1/2 1/4;1/2 1 1/2; 1/4 1/2 1/4]
figure
imshow(RGB)
title('demo1')