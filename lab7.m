%% ECE 3245 3230-001
%% Practicom 7

%% Nicholas Walsh Brendan Burke Colin O'Leary 


clc;clear;close all
Published=datestr(now, 21)


%% Part 1
N1 = 1
N2 = 5
W= pi
M = 1000
x = zeros(1,M);
x(1:5) = 1;
y = spec_anal(W,M,N1,N2,x);
%y = zeros(1,M);
%i = 0;
w = 2*W/M;
%for n=(-M/2+1:M/2)
 %   i=1;
  %  for k = N1:N2
   %     y(n+M/2) = y(n+M/2) + (x(i) * exp(-1*j*w*n*k));
    %    i=i+1;
   % end
%end
figure
f = linspace(-pi,pi,M);
plot(f, abs(y).^2)

figure
stem(N1:N2,x(N1:N2));

y_real=zeros(1,M);

for u=(-M/2+1:M/2)
    y_real(u+M/2) = exp(-1*j*w*u*(N2-1)/2) * sin(N2*w*u/2)/sin(w*u/2);
end
figure
plot(f, abs(y_real).^2)

load AEdat
t = 0:(0.8/2091):0.8;
figure
plot(t(1:2091),AEdat)

T_s = 0.8/2091;
N1=1;
N2=2091;
M=5000;
W=pi/10;
f = linspace(-pi/10,pi/10,M);
y_2 = spec_anal(W,M,N1,N2, AEdat);
figure
plot(f, abs(y_2).^2)
W_2=pi/T_s;
gator = 1/T_s;
y_3 = zeros(1,M);
y_3 = y_2/T_s;
g= linspace(-gator*pi/10,gator*pi/10,M);
%y_3 = spec_anal( W_2,M,N1,N2, AEdat );
figure
plot(g,abs(y_2).^2)