function x_jW = myfft(x_n)
    N = length(x_n);
    k = N-1;

    for n = 1:N
        for k = 1:N
            W_N(k,n) = exp((-i * 2*pi*(k-1)*(n-1))/N);
        end
    end

    x_jW = x_n' * W_N;
    x_jW = x_jW';
end