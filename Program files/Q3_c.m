%Let vector a = randn(8; 1) and af = fft(a).
%Let vector b = circshift(a; 3) and bf = fft(b).

a = randn(8, 1)
af = fft(a)
subplot(2,1,1)
stem(af)
title('FFT of Vector "a"')
% b = circshift(a, 3)
b = circshift(a,-2)
bf = fft(b)
% subplot(2,1,2)
% stem(bf)
% title('FFT of Vector "b"')

% Let index sequence nn = [0 : 7]' (column vector).
nn = [0 : 7]'
% Let delay = exp(j * 2 * pi * nn * 3/8).
% delay = exp(j * 2 * pi * nn * 3/8)
delay = exp(j * 2 * pi * nn * (-2)/8)
% Let afa = delay.*bf and compare afa with af.
afa = delay.*bf
subplot(2,1,2)
stem(afa)
title('Dot product of delay and nn vectors')
% Change vector b = circshift(a,-2) and bf = fft(b). Are af and bf the same?
% b = circshift(a,-2)
% bf = fft(b)
% Let delay = exp(j * 2 * pi * nn * (-2)/8).
% delay = exp(j * 2 * pi * nn * (-2)/8)
% Let afa = delay.*bf and compare afa with af. 
% afa = delay.*bf




