function [x] = mydequant(q,w)
    x=zeros(size(q));
    x=(q+.5)*w;
end

