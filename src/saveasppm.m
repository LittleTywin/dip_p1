function saveasppm(x,filename,K)
M=size(x,1);
N=size(x,2);

mat=zeros(3,M*N);

for i=1:M
    for j=1:N
        mat(1,i*(N)+j)=x(i,j,1);
        mat(2,i*(N)+j)=x(i,j,2);
        mat(3,i*(N)+j)=x(i,j,3);
    end
end
res = reshape(mat,1,[]);

file=fopen(filename, 'a');
fprintf(file, 'P6 %d %d %d\n', N, M, K-1);
fwrite(file,res,'uint8');
    

fclose(file);

end

