function play_scale
%
keys = [40 42 44 45 47 49 51 52]
% Notes C D E F G A B C
% key # 40 is middle C
%
dur = 0.25 * ones(1,length(keys));
fs = 11024;
harmonic_nums = 1:5;
harmonic_vals = [1 .5 .3 .2 .3];
xx = zeros(1,sum(dur)*fs + 100);
n1 = 1;
for kk = 1:length(keys);
keynum = keys(kk);
tone = note(keynum, fs,harmonic_nums,harmonic_vals, dur(kk));
n2 = n1 + length(tone) - 1;
xx(n1:n2) = xx(n1:n2) + tone;
n1 = n2+1;
end
soundsc(xx, fs)