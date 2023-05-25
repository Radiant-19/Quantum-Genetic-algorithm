function y = rastrigin(x)
    n = length(x);
    A = 10;
    y = A*n + sum(x.^2 - A*cos(2*pi*x));
end
