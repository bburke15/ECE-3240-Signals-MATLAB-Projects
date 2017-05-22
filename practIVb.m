%% ECE 3245 3230-001
%% Practicom IVb

%% Nicholas Walsh Brendan Burke 

clc;clear;close all
Published=datestr(now, 21)

%%Part 3a
load('pract2_data');
figure
x = (1:1:2048);
plot(x,xt1);

y = xt1(129:1921);
yy = [y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y,y];
yy = yy(1:48000);
figure
plot(yy);
soundsc(yy, 48000);

X_new=fft(xt1,128)
X_final=X_new;

for i=1:64
    X_final(i)=abs(X_new(i)/128);
end
k=(1:1:64);
stem(k,X_final(1:64)) 