load('march.mat')
RGB = bayer2rgb(x);
w=1/8;
q = imagequant(RGB,w,w,w);
deq = imagedequant(q,w,w,w);
figure
imshow(deq)
title('Demo3 - 3bits/color quantisation')