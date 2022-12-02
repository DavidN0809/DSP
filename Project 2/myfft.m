
function x_jw = myfft(x_n)
%determine N
[N, NumCols] = size(x_n);

if(NumCols > 1)
    x_jw = 0;
    return
end

%creating W & N
W_N=exp(-1i*2*pi/N);
D=zeros(N,N);
for k=0:N-1
    for n=0:N-1
        D(k+1,n+1) = W_N^(k*n);
    end
end

%calculate fourier transform
x_jw = D*x_n;
end
