%Phake script created by Peter Johnson
%Sept 17, 2018
[h,t]=impulse_response (cos(x), sin(x), 2000)
stem(h)
=======
% This tests whether the impulse_response.m function works

fs=10;
t=-1:1/fs:1;
x=cos(2*pi*t);    % input signal
y=3*cos(2*pi*t);  % output signal
[h,t]=impulse_response(x,y,fs);   % we expect the impulse response to be
amplitude=(1/fs)*trapz(h)         % a dirac delta with amplitude 3

