function [x,n] = UnitStepSeq(n0, n1, n2)
if n0<n1 || n0>n2
    error('The Value of reference is wrong')
end
n = n1:n2
x = (n >= n0)
end