function x_n = myifft(x_jw)

%determine N
[N, NumCols] = size(x_jw);

if(NumCols > 1)
    x_n = 0;
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

%invert D
Dinv = 1/N*D';

%result
x_n = Dinv*x_jw;
end

%}
