clear all;clc;
u=inline('(t>=-5)& (t<5)','t');
t=-10:0.01:10;
plot(t,u(t))
xlabel ('t (seconds)');
ylabel ('Ámplitude')
axis([-10 10 -2 2])