%% ECE 3245 3230-001
%% Practicom 8

%% Nicholas Walsh Brendan Burke Colin O'Leary 


clc;clear;close all
Published=datestr(now, 21)

%% Part 1

echo on
%************************************************************
%
% Discrete-Time Lowpass Filter Design & Evaluation
%
%************************************************************
%
% We design a discrete-time lowpass filter, and then:
%
% 1) look at its numerator & denominator coefficients;
% 2) compute, list and plot its poles and zeros;
% 3) determine its partial fraction expansion from which
% its impulse response can be written;
% 4) plot the frequency response.
%
%pause
%
% The specifications for the filter are:
%
% 1) 8-th order elliptic lowpass;
% 2) cutoff .4*pi radians/sample;
% 3) passband ripple of 2dB; and
% 4) minimum stopband attenuation of 40dB.
%
figure
N=8; %order
PB=2; %passband ripple
SB=40; %min stopband attenuation
CFREQ=.4; %cutoff
[B,A]=ellip(N,PB,SB,CFREQ); %
%pause
[B',A']; % list transfer function numerator/denominator coefficients
%pause
%
% Determine zeros & poles from Transfer function coefficient
%
Z=roots(B);
P=roots(A);
zang=angle(Z);
zamp=abs(Z);
pang=angle(P);
pamp=abs(P);
%pause
[zamp,zang,pamp,pang]; % list pole/zero magnitude/phase
%pause

%
% Plot zeros and Poles in the z-plane (try using the "zplane" function)
%
subplot(221)
polar(zang,zamp,'o')
hold on
%pause
polar(pang,pamp,'x')
text(-1.45,0.2,'Hugo Chavez')
%pause
%
% Partial fraction expansion of H(z)
%
[res,pol,dr]=residue(B',A');
rang=angle(res);
ramp=abs(res);
[pamp,pang,ramp,rang] % list residues/poles
%pause
%
% Compute the Frequency Response (try "freqz" without an output)
%
Npts=512;
[hfreq,w]=freqz(B,A,Npts,'whole');
mag=abs(hfreq);
phase=angle(hfreq)*180/pi;
%
% Plot the Frequency Response
%
% a) phase vs. angular freq. (from 0 to 2*pi)
%
subplot(223)
plot(w,phase)
xlabel('Freq. (radians/sample)')
ylabel('Phase Response (degrees)')
text(2.7,-150,'Felipe Calderon')
%pause
%
% b) magnitude vs. freq. (in radians/sample from 0 to 2*pi)
%
subplot(222)
plot(w,mag)
xlabel('Freq. (radians/sample)')
ylabel('Magnitude Response')
text(2.5,.8,'Angel Cabrera')
%pause
%
% c) magnitude (dB) vs. freq. (in radians/sample from -pi to pi)
% (try using "fftshift" to convert w ang mag to -pi to pi range)
%
w1(1:Npts/2)=w(1+Npts/2:Npts)-(2*pi);
w1(1+Npts/2:Npts)=w(1:Npts/2);
mag1(1:Npts/2)=mag(1+Npts/2:Npts);
mag1(1+Npts/2:Npts)=mag(1:Npts/2);
subplot(224)
plot(w1,20*log10(mag1))
xlabel('Freq. (radians/sample)')
ylabel('Magnitude Response (dB)')
text(-1,-40,'Lula da Salva')

%% Part 2
pause
%
% The Chebyshev Type II low pass filter specifications for the filter are:
%
% 1) 6 order elliptic lowpass;
% 2) cutoff (1/3)*pi radians/sample;
% 3) passband ripple of 2dB; and
% 4) minimum stopband attenuation of 40dB.
%
figure
N=6; %order
SB=40; %min stopband attenuation
CFREQ=1/3; %cutoff
[B,A]=cheby2(N,SB,CFREQ); %
pause
[B',A']; % list transfer function numerator/denominator coefficients
pause

% Determine zeros & poles from Transfer function coefficient
%
Z=roots(B);
P=roots(A);
zang=angle(Z);
zamp=abs(Z);
pang=angle(P);
pamp=abs(P)
pause
[zamp,zang,pamp,pang]; % list pole/zero magnitude/phase
pause

%
% Plot zeros and Poles in the z-plane (try using the "zplane" function)
%
subplot(221)
polar(zang,zamp,'o')
hold on
pause
polar(pang,pamp,'x')
text(-1.45,0.2,'Hugo the movie')
pause
%
% Partial fraction expansion of H(z)
%
[res,pol,dr]=residue(B',A');
rang=angle(res);
ramp=abs(res)
[pamp,pang,ramp,rang] % list residues/poles
pause
%
% Compute the Frequency Response (try "freqz" without an output)
%
Npts=512;
[hfreq,w]=freqz(B,A,Npts,'whole');
mag=abs(hfreq);
phase=angle(hfreq)*180/pi;
%
% Plot the Frequency Response
%
% a) phase vs. angular freq. (from 0 to 2*pi)
%
subplot(223)
plot(w,phase)
xlabel('Freq. (radians/sample)')
ylabel('Phase Response (degrees)')
text(2.7,-150,'Kyle Singler')
pause
%
% b) magnitude vs. freq. (in radians/sample from 0 to 2*pi)
%
subplot(222)
plot(w,mag)
xlabel('Freq. (radians/sample)')
ylabel('Magnitude Response')
text(2.5,.8,'Scooby Doo')
pause
%
% c) magnitude (dB) vs. freq. (in radians/sample from -pi to pi)
% (try using "fftshift" to convert w ang mag to -pi to pi range)
%
w1(1:Npts/2)=w(1+Npts/2:Npts)-(2*pi);
w1(1+Npts/2:Npts)=w(1:Npts/2);
mag1(1:Npts/2)=mag(1+Npts/2:Npts);
mag1(1+Npts/2:Npts)=mag(1:Npts/2);
subplot(224)
plot(w1,20*log10(mag1))
xlabel('Freq. (radians/sample)')
ylabel('Magnitude Response (dB)')
text(-1,-40,'Mel Gibson')
%select two frequencies, one the passband and one in the stopband

%outside passband
t = [0:1:499];
L = 1;
f =pi/2;
y_1 = L*sin(f*t);
figure
plot(t(1:500),y_1(1:500))
 
%inside passband
f =pi/6;
y_2 = L*sin(f*t);
figure
plot(t(1:500),y_2(1:500))

dataOut_1 = filter(B,A,y_1);
dataOut_2 = filter(B,A,y_2);

figure
plot(t(1:500),dataOut_1(1:500));
figure
plot(t(1:500),dataOut_2(1:500));