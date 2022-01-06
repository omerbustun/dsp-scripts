% DTFT of x1(n) = 0.6 ^ |n|*(u(n+10)-u(n-11))
clc; close all;
%
[x11,n11] = stepseq(-10,-11,11); [x12,n12] = stepseq(11,-11,11);
[x13,n13] = sigadd(x11,n11,-x12,n12); n1 = n13; x1 = (0.6 .^ abs(n1)).*x13;
w1 = linspace(-pi,pi,201); X1 = dtft(x1,n1,w1);
magX1 = abs(X1); phaX1 = angle(X1);
%
Hf_1 = figure; set(Hf_1,'NumberTitle','off','Name','P0301a');
subplot(2,1,1); plot(w1/pi,magX1,'LineWidth',1.5);
axis([-1 1 0 4.5]); wtick = [-1:0.2:1]; magtick = [0:0.5:4.5];
xlabel('\omega/\pi');
ylabel('|X|');
title('Magnitude response');
set(gca,'XTick',wtick);
set(gca,'YTick',magtick);
subplot(2,1,2); plot(w1/pi,phaX1*180/pi,'LineWidth',1.5);
axis([-1,1,-180,180]); phatick = [-180 0 180];
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

function [x,n] = impseq(n0,n1,n2)
    % Generates x(n) = delta(n-n0); n1 <= n <= n2
    % ----------------------------------------------
    % [x,n] = impseq(n0,n1,n2)
    %
    n = [n1:n2]; x = [(n-n0) == 0];
end

function [x,n] = stepseq(n0,n1,n2)
    % Generates x(n) = u(n-n0); n1 <= n <= n2
    % ------------------------------------------
    % [x,n] = stepseq(n0,n1,n2)
    %
    n = [n1:n2]; x = [(n-n0) >= 0];
end

function [y,n] = sigadd(x1,n1,x2,n2)
    % implements y(n) = x1(n)+x2(n)
    % -----------------------------
    % [y,n] = sigadd(x1,n1,x2,n2)
    %  y = sum sequence over n, which includes n1 and n2
    %  x1 = first sequence over n1
    %  x2 = second sequence over n2 (n2 can be different from n1)
    %
    n = min(min(n1),min(n2)):max(max(n1),max(n2));
    % duration of y(n)
    y1 = zeros(1,length(n)); y2 = y1;
    % initialization
    y1(find((n>=min(n1))&(n<=max(n1))==1))=x1;
    % x1 with duration of y
    y2(find((n>=min(n2))&(n<=max(n2))==1))=x2;
    % x2 with duration of y
    y = y1+y2;
end
