%% ECE 3245 3230-001
%% Practicom IV Part 3

%% Nicholas Walsh Brendan Burke 

clc;clear;close all
Published=datestr(now, 21)


%% Part 3
load('pract2_data');
figure
x = (1:1:2048);
plot(x,xt1);

y = xt1(129:1921);
yy = [y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y];
yy = yy(1:48000);
figure
plot(yy);
soundsc(yy);