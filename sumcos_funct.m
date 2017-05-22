function xx = sumcos_funct(f, X, fs, dur)
% SUMCOS Function to synthesize a sum-of-cosine signal
% usage:
% xx = the synthesized signal
% f = vector of frequencies (in Hz)
% X = vector of complex exponentials: (Amp*exp{j*phase})
% fs = the sampling rate in samples per second
% dur = time duration of the signal

% Note: f and X must be the same length
% X(1) corresponds to frequency f(1)
% X(2) corresponds to frequency f(2), etc.
M = length(f);
ak = abs(X);
pk = angle(X);
xx = zeros(1,(dur*fs));
for k=1:(dur*fs)
    for j=1:M
        xx(k) = xx(k) + ak(j)*cos((2*pi*f(j)*(k/fs)) + pk(j));
    end
end
        
