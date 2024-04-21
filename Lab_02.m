%% Lab 02 - To Perform Operation on Discrete Time Sequences
% Name  : Prem Dadhore
% Roll Number : 66
% Batch : B4
% Date of Performance : 02/05/2023
clc; close all; clear all;
%% Addition of Two Discrete Time signal
n1 = 0:10;
x1 = (0.9).^n1;
n2 = -6:5;
x2 = [1 2 3 1 2 3 1 2 3 1 2 3];
[y,n]= sigAdd(x1,n1,x2,n2)
figure(1)
subplot(3,1,1)
stem(n1,x1,'-*r','linewidth',3)
axis([min(n)-1, max(n)+1, min(x1)-1, max(x1)+1]);
title('First Discrete signal x_1[n]')
subplot(3,1,2)
stem(n2,x2,'-*g','linewidth',3)
axis([min(n)-1, max(n)+1, min(x1)-1, max(x1)+1]);
title('Second Discrete signal x_2[n]')
subplot(3,1,3)
stem(n,y,'-*b','linewidth',3)
axis([min(n)-1, max(n)+1, min(x1)-1, max(x1)+1]);
title('Addition of x_1[n] and x_2[n] ')
% function [y,n]= sigAdd(x1,n1,x2,n2)
% n = min(min(n1),min(n2)):max(max(n1),max(n2));
% 
% y1 = zeros(1,length(n));
% y2 = zeros(1,length(n));
% 
% y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
% y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
% 
% y = y1+y2;

%% Multiplication Of Two Discrete Time signal
n1 = 0:10;
x1 = (0.9).^n1;
n2 = -6:5;
x2 = [1 2 3 1 2 3 1 2 3 1 2 3];
[y,n]= sigMul(x1,n1,x2,n2)
figure(2)
subplot(3,1,1)
stem(n1,x1,'-*r','linewidth',3)
axis([min(n)-1, max(n)+1, min(x1)-1, max(x1)+1]);
title('First Discrete signal x_1[n]')
subplot(3,1,2)
stem(n2,x2,'-*g','linewidth',3)
axis([min(n)-1, max(n)+1, min(x1)-1, max(x1)+1]);
title('Second Discrete signal x_2[n]')
subplot(3,1,3)
stem(n,y,'-*b','linewidth',3)
axis([min(n)-1, max(n)+1, min(x1)-1, max(x1)+1]);
title('Multiplication of x_1[n] and x_2[n] ')

% function [y,n]= sigMul(x1,n1,x2,n2)
% 
% n = min(min(n1),min(n2)):max(max(n1),max(n2));
% 
% y1 = zeros(1,length(n));
% y2 = zeros(1,length(n));
% 
% y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
% y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
% 
% y = y1.*y2;
%% Time Shifting of Two Discrete signal
n1 = 0:10;
x1 = (0.9).^n1;
k =2;
[y,n]=sigShift(x1,n1,k)
figure(3)
subplot(2,1,1)
stem(n1,x1,'-*r','linewidth',3)
axis([min(n)-1, max(n)+1, min(x1)-1, max(x1)+1]);
title('Original Discrete signal x[n]')
subplot(2,1,2)
stem(y,n,'-*b','linewidth',3)

% function [y,n]=sigShift(x,n,k)
% n = n+k;
% y = x;
% end
%% HW Que 1 - Signal Folding 
n1 = 0:10;
x1 = (0.9).^n1;
k = -4;
[y,n] = sigfold(x1,n1,k);
figure(4)
subplot(2,1,1)
stem(n1,x1,'-*r','linewidth',3)

subplot(2,1,2);
stem(-n,y,'-*b','linewidth',3)

% function[y,n] = sigfold(x,n,k)
% y = x;
% n = n+k;
% 
% end
%% HW Que 2 - 
n1 = 0:10;
x1 = (1.2).^n1;
k = -3;
[y,n] = sigfold(x1,n1,k);
figure(5)
subplot(2,1,1)
stem(n1,x1,'-*r','linewidth',3)

subplot(2,1,2);
stem(-n,y,'-*b','linewidth',3)





%% Convolution Of two discrete Signal
x = UnitStepSeq(0,-5,15) - UnitStepSeq(10,-5,15);
nx = -5:15;
figure(6)

subplot(3,1,1)
stem(nx,x,'-*b','linewidth',3);
title('x[n]');
xlabel('samples');
ylabel('n');

nh = 0:50;
h = (0.9).^nh;
subplot(3,1,2)
stem(nh,h,'-*g','linewidth',3);
title('x[n]');
xlabel('samples');
ylabel('n');

subplot(3,1,3)
[y,n] = myConv(x, nx, h, nh);
stem(n,y,'-*r','linewidth',3);
title('x[n]*h[n]');
xlabel('samples');
ylabel('n');

% function [y,n] = myConv(x, nx, h, nh)
% 
% y = conv(x,h);
% nb = min(nx) + min(nh);
% ne = max(nx) + max(nh);
% 
% n = nb : ne;
% end
%% Gibbs Phenomenon
F = 50;
T = 1/F;
t = 0:0.001*T:5*T;
y = 0;
for n = 1:2:50
    y = y+1/n*sin(2*pi*F*n*t)
end
figure(8)
plot(t,y)

% %% Home Assignment for Lab 2
% % Que 2
% % b] for x[-n]
% 
% n1 = -5:4;
% x1 = [-1,0,1,2,3,4,4,4,4,4];
% [y,n] = sigfold(x1,n1,k);
% 
% figure(9)
% subplot(2,1,1);
% stem(n1,x1,'-*g','linewidth',2);
% subplot(2,1,2);
% stem(-n,y,'-*b','linewidth',2);
% 
% %% for
% n1 = -5:4;
% x1 = [-1,0,1,2,3,4,4,4,4,4];
% k=-3;
% [y,n] = sigfold(x1,n1,k);
% 
% figure(11)
% subplot(2,1,1)
% stem(n1,x1);
% subplot(2,1,2)
% stem(-n,y);