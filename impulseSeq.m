function [x,n] = impulseSeq(n0, n1, n2)

if n0<n1 || n0>n2
    error('The Value of reference point is wrong')
end

n = n1:n2;
x = (n == n0);
end