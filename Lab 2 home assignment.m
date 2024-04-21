%% Home Assignment for Lab 2
% Que 2
n1 = -5:4;
x1 = [-1,0,1,2,3,4,4,4,4,4]
[y,n] = sigfold(x1,n1,0);
figure(1)
subplot(2,2,1)
stem(n1,x1,'-*r','linewidth',2);
title('x[n]')  

subplot(2,2,2);
stem(-n1,x1,'-*g','linewidth',2);
title('x[-n]')

[y,n] = sigfold(x1,n1,-3);
subplot(2,2,3);
stem(-n,y,'-*b','linewidth',2);
title('x[n-3]')

[y,n] = sigfold(x1,n1,2);
subplot(2,2,4);
stem(-n,y,'-*m','linewidth',2);
title('x[n+2]')

%% Que 3 Generate  and plot using the stem function 

y = 2*(4:end);
figure(2)
stem(1)


