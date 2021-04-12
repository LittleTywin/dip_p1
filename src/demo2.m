res1 = myresize(RGB,240,320,'nearest');
figure
imshow(res1)
title('240x320 method="nearest"')
res2 = myresize(RGB,200,300,'linear');
figure 
imshow(res2)
title('200x300 method="linear"')