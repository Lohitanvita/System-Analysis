% Let vectors a = [1 1 1 1 0 0 0 0] and af1 = fft(a; 8). Plot abs(af1) in Matlab.
% 2.) Let af2 = fft(a; 16). Plot abs(af2) in Matlab.
a = [1 1 1 1 0 0 0 0]
af1 = fft(a, 8)
af1_absolute = abs(af1)
subplot(2,1,1)
stem(af1_absolute)
title('Absolute value of FFT of vector "a" with length 8')
af2 = fft(a, 16)
af2_absolute = abs(af2)
subplot(2,1,2)
stem(af2_absolute)
title('Absolute value of FFT of vector "a" with length 16')

sgtitle('Comparison of af1 and af2')