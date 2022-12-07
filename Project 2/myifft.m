function x_n = myifft(x_k)
    N = length(x_k);
    k = N-1;

    for n = 1:N
        for k = 1:N
            W_N(k,n) = exp(-i * ((2*pi*(k-1))/N) * (n-1));
        end
    end

    x_n = x_k' * W_N;
    x_n = x_n';
end