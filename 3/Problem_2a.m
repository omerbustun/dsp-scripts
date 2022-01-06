n1 = -3:3; x = [-4 5 1 -2 -3 0 2]; n2 = -1:5; h = [6 -3 -1 0 8 7 -2];
[y,n] = conv_m(x,n1,h,n2); y, n

function [y,ny] = conv_m(x,nx,h,nh)
    % Modified convolution routine for signal processing
    % --------------------------------------------------
    % [y,ny] = conv_m(x,nx,h,nh)
    % y = convolution result
    % ny = support of y
    % x = first signal on support nx
    % nx = support of x
    % h = second signal on support nh
    % nh = support of h
    %
    nyb = nx(1)+nh(1); nye = nx(length(x)) + nh(length(h));
    ny = [nyb:nye];
    y = conv(x,h);
end