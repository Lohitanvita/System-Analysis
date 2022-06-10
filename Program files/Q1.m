%1. (Verify the convolution relationship)
% Consider a row vector a = [1 1 1 1 0 0 0 0] and given its plot
 a = [1 1 1 1 0 0 0 0];
 subplot(2, 2, 1)
 stem(a)
 title ('Row Vector a')
% Consider another row vector b = [1 1 1 1 0 0 0 0] and given its plot
 b = a;
 subplot(2, 2, 2)
 stem(b)
 title ('Row Vector b')
% Manually convoluting a and b vectors, we get vector as shown in the plot:
 c = [1, 2, 3, 4, 3, 2, 1, 0, 0, 0, 0, 0, 0, 0, 0]
 subplot(2, 2, 3)
 stem(c)
 title ('Row Vector c')
% Convoluting a and b vectors in the MATLAB we get vector d and its plot as follows:
 d = conv(a,b);
 subplot(2, 2, 4)
 stem(d)
 title ('Row Vector d')
% A subplot including all the vectors a, b, c, d
 sgtitle ('Subplot of a convolution b')
