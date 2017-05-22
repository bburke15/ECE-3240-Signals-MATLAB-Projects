function  y = spec_anal( W,M,N1,N2, x )
i = 0;
w = 2*W/M;
y = zeros(1,M);
for n=(-M/2+1:M/2)
    i=1;
    for k = N1:N2
        y(n+M/2) = y(n+M/2) + (x(i) * exp(-1*j*w*n*k));
        i=i+1;
    end
end


end

