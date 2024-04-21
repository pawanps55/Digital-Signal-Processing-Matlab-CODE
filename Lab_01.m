%% Lab 01 : To generate Discrete Time Signal
% Name  : Pawan Dilip Sorte
% Roll Number : 63
% Batch : B4      Date: 18/04/2023 and 25/04/2023
%% Impulse Signal
n0 = 0;
n1 = -10;
n2 = 10;
[x,n]= impulseSeq(n0, n1, n2);
figure(1)
stem(n,x);
axis([min(n)-1, max(n)+1, min(x)-0.2, max(x)+0.2])
title('impulse signal')
xlabel('samples')
ylabel('\delta[n]')
% function [x,n] = impulseSeq(n0, n1, n2)
% 
% if n0<n1 || n0>n2
%     error('The Value of reference point is wrong')
% end
% 
% n = n1:n2;
% x = (n == n0);
% end
%% Unit Step Signal
n0 = 0;
n1 = -10;
n2 = 10;
[x,n]= UnitStepSeq(n0, n1, n2);
figure(2)
stem(n,x);
axis([min(n)-1, max(n)+1, min(x)-0.2, max(x)+0.2])
title('Unit Step Signal')
xlabel('samples')
ylabel('u(n)')
% function [x,n] = UnitStepSeq(n0, n1, n2)
% if n0<n1 || n0>n2
%     error('The Value of reference is wrong')
% end
% n = n1:n2
% x = (n >= n0)
% end
%% Exercise - 1
[x1,n]= impulseSeq(2, n1, n2);
[x2,n]= impulseSeq(-2, n1, n2);
[x3,n]= UnitStepSeq(3, n1, n2);
[x4,n]= UnitStepSeq(-3, n1, n2);
figure(3)
subplot(2,2,1)
stem(n,x1)
title('\delta[n-2]')
subplot(2,2,2)
stem(n,x2)
title('\delta[n+2]')
subplot(2,2,3)
stem(n,x3)
title('\delta[n-3]')
subplot(2,2,4)
stem(n,x4)
title('\delta[n+3]')
%% Real Value Exponential Signal
n = 0:20;
x5 = 0.9.^n;
x6 = (-0.9).^n;
figure(4)
subplot(2,1,1)
stem(n,x5)
title('Real Valuse Exponential for a=0.9')
subplot(2,1,2)
stem(n,x6)
title('Real Valuse Exponential for a=-0.9')
%% Home Assignment - 1
n1 = -15;
n2 = 15;
[x7,n] = impulseSeq(4, n1, n2);
figure(5)
subplot(2,2,1)
stem(n,4*x7);
title('4\delta[n-4]')
[x8,n] = impulseSeq(-3, n1, n2);
figure(5)
subplot(2,2,2)
stem(n,-3*x8);
title('-3\delta[n+3]')
n0=2
[x9,n]= UnitStepSeq(2, n1, n2);
figure(5)
subplot(2,2,3)
stem(n,2.5*x9);
title('2.5u[n-2]')
[x10,n]= UnitStepSeq(-4, n1, n2);
figure(5)
subplot(2,2,4)
stem(n,4*x10);
title('4u[n+4]')
%% Sine Signal
F = 100;
t = 0:0.01*1/F:2/F;
x = 2*sin(2*pi*F*t)
figure(7)
subplot(2,1,1)
plot(t,x)
xlabel('Time')
ylabel('Amplitude')
title('Sine signal in Ct')
subplot(2,1,2)
stem(t,x)
xlabel('Time')
ylabel('Amplitude')
title('Sine signal in Dt')
%% Cosine Signal
F = 300;
t = 0:0.003*1/F:2/F;
x = 2*cos(2*pi*F*t)
figure(8)
subplot(2,1,1)
plot(t,x)
xlabel('Time')
ylabel('2*cos(2*pi*F*t)')
title('Cosine Signal in CT')
subplot(2,1,2)
stem(t,x)
xlabel('Time')
ylabel('2*cos(2*pi*F*t)')
title('Cosine Signal in DT')
%% Square Waveform
F = 100; % Frequency of Square Wave
t = 0:0.01/F:4/F;
x = 5*square(2*pi*F*t,50)
figure(9)
subplot(2,1,1)
plot(t,x)
axis([min(t)-0.001, max(t)+0.001, min(x)-0.2, max(x)+0.2])
xlabel('Time')
ylabel('square(2*pi*F*t,50)')
title('Square Signal')
subplot(2,1,2)
stem(t,x)
%% Sawtooth Waveform
F = 100;
t = 0:0.01/F:4/F;
x = 5*sawtooth(2*pi*F*t);
figure(10)
subplot(2,1,1)
plot(t,x)
axis([min(t)-0.001, max(t)+0.001, min(x)-0.5, max(x)+0.5])
xlabel('Time')
ylabel('5*sawtooth(2*pi*F*t)')
title('Sawtooth Signal')
subplot(2,1,2)
stem(t,x)
xlabel('Time')
ylabel('5*sawtooth(2*pi*F*t)')
%% Audioread
[y,Fs] = audioread('StarWars3.wav');
StarWars = audioplayer(y,Fs);
play(StarWars);
figure(11)   
plot(y)
