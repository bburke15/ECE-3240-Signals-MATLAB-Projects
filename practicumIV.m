%% ECE 3245 3230-001
%% Practicom IV

%% Nicholas Walsh Brendan Burke 

clc;clear;close all
Published=datestr(now, 21)


%% Part 1 B
n=8;
t=-2:.0001:n;
y=-2 * sawtooth(((2*pi)/4)*t) + 2;
plot(t,y);
ylabel ('Amplitude');
xlabel ('Time Index');


N = [1 3 7 11 51];
x = zeros(1001);
t = (-2:0.01:8);
for i = 1:5
    for tt = 1:1001
        for k = 1:N(i)
            x(tt) = x(tt) + (4/(k*pi))*cos((k*pi*t(tt))/2 - pi/2);   
        end
        x(tt) = x(tt) + 2;
    end
    figure
    plot(t,x)
    x = zeros(1001);
end

%% Part 1 C
k =(-12:1:12);
p = zeros(25);
p(13) = 4;
tp = 4;
for i = 1:25
    if i ~= 13
    p(i) = (2/(k(i)*pi))^2;
    tp = tp + p(i);
    end
end
figure
stem(k,p);
disp(tp);

%% Part 2

%a
n=8;
t=-2:.0001:n;
y=-2 * sawtooth(((2*pi)/4)*t) + 2;
plot(t,y);
ylabel ('Amplitude');
xlabel ('Time Index');


N = [1 3 7 11 51];
x = zeros(1001);
t = (-2:0.01:8);
for i = 1:5
    for tt = 1:1001
        for k = 1:N(i)
            x(tt) = x(tt) + (4/(k*pi))*cos((k*pi*t(tt))/2 - pi/2 - k*pi/2);   
        end
        x(tt) = x(tt) + 2;
    end
    figure
    plot(t,x)
    x = zeros(1001);
end


