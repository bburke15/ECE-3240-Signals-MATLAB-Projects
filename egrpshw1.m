%% Egr P & S Hw 1
%%Brendan Burke

%%1-1

%Part A
a = randi([0 9],1,100);
nbins = 10;
figure(1)
h = histogram(a,nbins);
title('100 Sample Values: Rand int 0-9')
xlabel('Value') % x-axis label
ylabel('# of Occurrences of Value') %y-axis label

%Part B
b = randi([0 9],1,1000);
figure(2)
h2 = histogram(b,nbins)
title('1000 Sample Values: Rand int 0-9')
xlabel('Value') % x-axis label
ylabel('# of Occurrences of Value') %y-axis label
%Yes, the 1000 # histogram does appear more uniform than the 100 # graph.

%Part C
c = randi([0 9],1,5000);
figure(3)
h3 = histogram(c,nbins)
title('5000 Sample Values: Rand int 0-9')
xlabel('Value') % x-axis label
ylabel('# of Occurrences of Value') %y-axis label
%Yes, the 5000 # histogram is noticeably more uniform than both the 100 and
%1000 # histograms. A larger sample size increases the normality of
%the distribution (the larger the sample size, the more uniform the data).

%%1-3
%resistors 1000 ohms +/- 20%. 20% of 1000 is 200. Range is 800-1200 ohms.
r = randi([800 1200],1,1000);
figure(4)
h4 = histogram(r,nbins)
title('1000 Sample Values for 1000 ohms +/- 20% Resistor')
xlabel('Resistor Value') % x-axis label
ylabel('# of Occurrences of Resistor Value') %y-axis label