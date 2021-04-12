load march.mat
RGB = bayer2rgb(x);
RGBres=myresize(RGB,150,200,'linear');
w=1/3;
q = imagequant(RGB,w,w,w);
d = imagedequant(q,w,w,w);
figure
subplot(1,2,1),imshow(RGB)
subplot(1,2,2),imshow(d)