function[y,ty]=convint(x,tx,h,th)
%Inputs:
%x is the input signal vector
%tx is the times of the samples in x
%h is the impulse response vector
%th is times of the samples in h
%outputs:
%y is the output signal vector,
%length(y)=length(x)+length(h)-1
%ty is the time of the samples in y
dt=tx(2)-tx(1);
y=conv(x,h)*dt;
ty=(tx(1)+th(1))+[0:(length(y)-1)]*dt;