delete dip.ppm
load march.mat
RGB = bayer2rgb(x);
RGBres=myresize(RGB,150,200,'linear');
w=1/8;
q = imagequant(RGBres,w,w,w);
d = imagedequant(q,w,w,w);

saveasppm(q,'dip.ppm',1/w);

figure
%subplot(1,2,1),imshow(RGB)
%subplot(1,2,2),imshow(d)
imshow('dip.ppm')
figure 
imshow(d)