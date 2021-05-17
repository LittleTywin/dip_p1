load march.mat
RGB = bayer2rgb(x);
RGBres=myresize(RGB,150,200,'linear');
w=1/8;
q = imagequant(RGBres,w,w,w);
saveasppm(q,'dip_is_fun.ppm',1/w);
figure
imshow('dip_is_fun.ppm')
title('Demo4 - ppm-formated image')