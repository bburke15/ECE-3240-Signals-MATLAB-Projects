%% ECE 3245 3230-001
%% Practicom IV Part 3

%% Nicholas Walsh Brendan Burke 

clc;clear;close all
Published=datestr(now, 21)

%% Part 1

N1=0;
N2=20;
W = pi/2;
M=20;
omega = (-pi:0.01:pi);
%k = ((-M/2+1):M/2);
omega_k = zeros(M);
j=0;
for k = ((-M/2 + 1):(M/2))
    j=j+1;
    omega_k(j) = (2*W/M)*k
end

x= zeros(M);
x = [0 0 0 0 0 1 1 1 1 1 1 1 1 1 1 0 0 0 0 0 ];
i=0;
DTFT = zeros(M);
    for k=(-M/2 + :(M/2) 
        for n = N1:N2
            i= i + 1;
            DTFT(i) = DTFT(i) + 2*x(i)*exp(-j*omega_k(i)*n(i));
        end
    end
    figure
    plot(omega_k,DTFT)