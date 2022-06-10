% Consider a column vector a =[1; 1; 1; 1; 0; 0; 0; 0;] and 
% vector b = circshift(a; 3)+0:1 * randn(8; 1) a shifted version of a with noise distortion
a = [1; 1; 1; 1; 0; 0; 0; 0;]
subplot(2, 1, 1)
stem(a)
title('Plot of vector "a"')
b = circshift(a, 3)+0:1 * randn(8, 1)
% b = circshift(a, 3) + 10 * randn(8, 1)
% b = circshift(a,-2) + 10 * randn(8, 1)
subplot(2, 1, 2)
stem(b)
title('Plot of vector "b"')

% Now using for loop make 20 iterations.
l = 10
for k = 1:l
    a = [1; 1; 1; 1; 0; 0; 0; 0;]
    b = circshift(a, 3)+0:1 * randn(8, 1)
    c = conv(a,b)
    stem(c)
    title('Plot of vector"c"')
    [max_val, ind] = max(c)
end

i = 20
for k = 1:i
    a = [1; 1; 1; 1; 0; 0; 0; 0;]
    % b = circshift(a,-2) + 10 * randn(8, 1)
    b = circshift(a, 3) + 10 * randn(8, 1)
    c = conv(a,b)
    stem(c)
    title('Plot of vector"c"')
    [max_val, ind] = max(c)
end




