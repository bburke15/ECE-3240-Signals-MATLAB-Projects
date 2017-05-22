%% ECE 3245 3230-001
%% Practicom I

%% Nicholas Walsh Brendan Burke 

clc;clear;close all
Published=datestr(now, 21)


%% Part 1

x = zeros(1,51);
x(1:21) = 1;
h = x;
h(1:21) = 0.05;
y = FIR_mine(h,x);
figure
stem(0:50,y)

%% Part 2
a = 1
yy = IIR_simple(a,x);
figure
stem(0:50,yy)

%% Part 3b
xx = zeros(1,11);
xx(1:2) = 1;
hh = xx;
hh(1) = 1;
hh(2) = -0.9;
yyy = FIR_mine(hh,xx);
figure
stem(0:10,yyy)

hhh = xx;
hhh(1) = 1;
hhh(2) = 0.9;
hhh(3) = 0.81;
hhh(4) = 0.729;
hhh(5) = 0.6561;
yyyy = FIR_mine(hhh,yyy);
figure
stem(0:10,yyyy)


bb(1) = 1;
bb(2) = 0.9;
yyyb = FIR_mine(bb,yyy);
figure
stem(0:10,yyyb)


%% Part 3d
aa = 0.9;
yyyyy = IIR_simple(aa,yyy);
figure
stem(0:10,yyyyy)

%%
load lighthouse.mat
show_img(xx);
load lighthouse1.mat
show_img(yy);

i = 1:326;
n = 1:426;
hhhh = zeros(1,426);
hhhh(1) = 1;
hhhh(2) = -0.8;

noblur = yy;
for i = 1:326
    noblur(i,1:426) = FIR_mine(hhhh,yy(i,1:426));
end
show_img(noblur);




