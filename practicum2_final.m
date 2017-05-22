%% Practicum 2
% Brendan Burke, Nicholas Walsh, Colin O'Leary

clc;clear;close all
Published=datestr(now, 21)

%% Procedure 1

x = (0.005:.005:0.25);

%test 1
xone = sumcos_funct([20],[1],200,0.25);
plot(x,xone)
%test 2
xtwo = sumcos_funct([20 40],[1 0.5],200,0.25);
figure
plot(x,xtwo)
%test 3
xthree = sumcos_funct([20 40 60 80],[1 -1 1 -1],200,0.25);
figure
plot(x,xthree)

%% Procedure 2
%clc;clear;close all
xx = (0.000125:0.000125:2);

xptwoa = sumcos_funct([1100],[100],8000,2);
figure
plot(xx(1:160),xptwoa(1:160))
soundsc(xptwoa,8000)

xptwob = sumcos_funct([1650],[136.6025404],8000,2);
figure
plot(xx(1:160),xptwob(1:160))
soundsc(xptwob,8000)

zeroos = zeros(1,16000);
xptwoab = [xptwoa  zeroos  xptwob];
soundsc(xptwoab,8000)
figure
spectrogram(xptwoab)

%% Procedure 3
%clc;clear;close all

play_scale
