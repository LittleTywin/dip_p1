function [x] = imagedequant(q,w1,w2,w3)
x=zeros(size(q));
for i=1:size(q,1)
    for j=1:size(q,2)
        x(i,j,1)=mydequant(q(i,j,1),w1);
        x(i,j,2)=mydequant(q(i,j,2),w2);
        x(i,j,3)=mydequant(q(i,j,3),w3);
    end
end
end
