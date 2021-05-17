function [xrgb] = bayer2rgb(xb)
[M,N] = size(xb);
xrgb = zeros(M,N,3);
%red indices
ir=2:2:M;
jr=1:2:N;
%blue indices
ib=1:2:M;
jb=2:2:N;

%red pixels
xrgb(ir,jr,1)=xb(ir,jr);
%green pixels, setting red and blue zero
xrgb(:,:,2)=xb;
xrgb(ir,jr,2)=0;
xrgb(ib,jb,2)=0;
%blue pixels
xrgb(ib,jb,3)=xb(ib,jb);

rbMask=[1/4 1/2 1/4;1/2 1 1/2;1/4 1/2 1/4];
gMask=[0 1/4 0;1/4 1 1/4;0 1/4 0];

xrgb(:,:,1) = conv2(xrgb(:,:,1),rbMask, 'same');
xrgb(:,:,2) = conv2(xrgb(:,:,2),gMask, 'same');
xrgb(:,:,3) = conv2(xrgb(:,:,3),rbMask, 'same');


end

