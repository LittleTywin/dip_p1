function [xrgbres] = myresize(xrgb, N, M, method)
if strcmp(method,'nearest')
     xrgbres=zeros(N,M,3);
     n=size(xrgb,1);
     m=size(xrgb,2);
     n_r=n/N;
     m_r=m/M;
     for i=1:N
         for j=1:M
             pn=ceil(i*n_r);
             pm=ceil(j*m_r);
             xrgbres(i,j,:)=xrgb(pn,pm,:);
         end
     end
             
elseif strcmp(method,'linear')
     xrgbres=zeros(N,M,3);
     n=size(xrgb,1);
     m=size(xrgb,2);
     n_r=n/N;
     m_r=m/M;
     for i=1:N
         for j=1:M
             n_l = floor(n_r*i);
             n_h = ceil(n_r*i);
             m_l = floor(m_r*j);
             m_h = ceil(m_r*j);
             
             n_weight = n_r*i-n_l;
             m_weight = m_r*j-m_l;
             
             a=xrgb(n_l,m_l,:);
             b=xrgb(n_l,m_h,:);
             c=xrgb(n_h,m_l,:);
             d=xrgb(n_h,m_h,:);
             xrgbres(i,j,:)= a*(1-n_weight)*(1-m_weight)+b*(1-n_weight)*(m_weight)+c*n_weight*(1-m_weight)+d*n_weight*m_weight;
         end
     end
else
    error('Available methods : nearest, linear')
end
        
end

