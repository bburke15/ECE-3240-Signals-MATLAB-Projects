%% Practicum 4

% Part 1

% plotted 4-t manually, get sawtooth waveform. enter in array values
N=51;
x=zeros(1,N);
xs = zeros(1,N);
t = (1:1:51);
    for t=1:51
        for k=1:N
            x(k)=(4/k*pi)*cos((k*pi*(t(k))/2) - pi/2);
        end
        x(t)=x(t)+2;
    end
xs;
t;
figure
plot(t,xs(t));