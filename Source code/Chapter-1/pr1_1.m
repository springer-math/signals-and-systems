clear all;clc;
x =inline('5*sin(2*pi*1*t).*exp(-.4*t)','t');
t = (-10:.01:10);
 plot(t,x(t));
xlabel ('t (seconds)');
ylabel ('Ámplitude');