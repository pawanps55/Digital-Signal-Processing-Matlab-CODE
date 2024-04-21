function [y,n] = myConv(x, nx, h, nh)

y = conv(x,h);
nb = min(nx) + min(nh);
ne = max(nx) + max(nh);

n = nb : ne;
end