% Consider vectors a = [1 1 1 1 0 0 0 0] and b = [0 0 1 2 3 0 0 0]
a = [1 1 1 1 0 0 0 0]
%subplot(2,1,1)
%stem(a)
%title('Plot for Vector "a"')
b = [0 0 1 2 3 0 0 0]
%subplot(2,1,2)
%stem(b)
%title('Plot for Vector "b"')
% convolution of vectors a and b is equated to c
c = conv(a, b)
subplot(2,1,1)
stem(c)
title('Convolution of a and b')
% taking fast fourier trasnform and their absolute values for vectors a,b
af = fft(a)
fft_a = abs(af)
% subplot(2,1,1)
% stem(fft_a)
% title('Absolute value of fft(a)')
bf = fft(b)
fft_b = abs(bf)
% subplot(2,1,2)
% stem(fft_b)
% title('Absolute value of fft(b)')
% Applying inverse fft on af, bf and plotting the graph
cc = ifft(af.* bf) 
subplot(2,1,2)
stem(cc)
title('Inverse FFT for af and bf')
sgtitle('Comparison of c and cc vectors')

