% 2. (Use convolution concept to estimate the relative time delay)
% Consider a row vector a = [1 1 1 1 0 0 0 0] 
% Subplot of vectors a and b are plotted
a = [1 1 1 1 0 0 0 0]
subplot(2, 1, 1)
stem(a)
title ('Plot of Vector "a"')

% Now changing value of row vector b = [0 0 0 1 1 1 1 0], b = [0 0 1 1 1 1 0 0 ], b = [1 1 0 0 0 0 1 1 ]
% b = [0 0 0 1 1 1 1 0]
% b = [0 0 1 1 1 1 0 0 ]
b = [1 1 0 0 0 0 1 1 ]
subplot(2, 1, 2)
stem(b)
title ('Plot of Vector "b"');

% Convoluting a and b, we get vector c which is plotted as below
c = conv(a,b)
stem(c)
title ('Plot of vector "c"')
[max_val, ind] = max(c)

