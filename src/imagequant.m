function [q] = imagequant(x,w1,w2,w3)
q=zeros(size(x));
for i=1:size(x,1)
    for j=1:size(x,2)
        q(i,j,1)=myquant(x(i,j,1),w1);
        q(i,j,2)=myquant(x(i,j,2),w2);
        q(i,j,3)=myquant(x(i,j,3),w3);
    end
end
end

