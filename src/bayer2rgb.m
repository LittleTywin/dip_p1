function [xrgb] = bayer2rgb(xb)
[M,N] = size(xb);
xrgb = zeros(M,N,3);
ir=2:2:M;
jr=1:2:N;
ib=1:2:M;
jb=2:2:N;

%red
xrgb(ir,jr,1)=xb(ir,jr);
% green
xrgb(:,:,2)=xb;
xrgb(ir,jr,2)=0;
xrgb(ib,jb,2)=0;
%blue
xrgb(ib,jb,3)=xb(ib,jb);

rbMask=[1/4 1/2 1/4;1/2 1 1/2;1/4 1/2 1/4];
gMask=[0 1/4 0;1/4 1 1/4;0 1/4 0];

xrgb(:,:,1) = conv2(xrgb(:,:,1),rbMask, 'same');
xrgb(:,:,2) = conv2(xrgb(:,:,2),gMask, 'same');
xrgb(:,:,3) = conv2(xrgb(:,:,3),rbMask, 'same');


end

