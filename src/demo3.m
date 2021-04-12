load('march.mat')
RGB = bayer2rgb(x);
figure
subplot(1,2,1),imshow(RGB)
title('original image')
w=1/3;
q = imagequant(RGB,w,w,w);
deq = imagedequant(q,w,w,w);
subplot(1,2,2),imshow(deq)
title('after quant-dequant')