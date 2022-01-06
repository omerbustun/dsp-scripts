% DTFT of x5(n) = [-4 5 1 -2 -3 0 2]
clc; close all;
%
x5 = [-4 5 1 -2 -3 0 2]; n5 = [-3:3];
w5 = linspace(-pi,pi,201); X5 = dtft(x5,n5,w5);
magX5 = abs(X5); phaX5 = angle(X5);
%
Hf_1 = figure; set(Hf_1,'NumberTitle','off','Name','P0301e');
subplot(2,1,1); plot(w5/pi,magX5,'LineWidth',1.5);
wtick = [-1:0.2:1]; magtick = [0:5:20]; axis([-1 1 0 20]);
xlabel('\omega/\pi'); ylabel('|X|');
title('Magnitude response');
set(gca,'XTick',wtick);
set(gca,'YTick',magtick);
subplot(2,1,2); plot(w5/pi,phaX5*180/pi,'LineWidth',1.5);
axis([-1,1,-200,200]); phatick = [-180:60:180];
xlabel('\omega/\pi'); ylabel('Degrees');
title('Phase Response');
set(gca,'XTick',wtick);
set(gca,'YTick',phatick);

function [X] = dtft(x,n,w)
    % Computes Discrete-time Fourier Transform
    % [X] = dtft(x,n,w)
    %   X = DTFT values computed at w frequencies
    %   x = finite duration sequence over n
    %   n = sample position vector
    %   w = frequency location vector
    X = exp(-1i*w'*n)  * x.';
    % X = x*exp(-j*n'*w);
end