function saveasppm(x,filename,K)
N=size(x,1);
M=size(x,2);

file=fopen(filename, 'w');
fprintf(file, 'P6 %d %d %d\n', M, N, K);
fclose(file);
data=

end

