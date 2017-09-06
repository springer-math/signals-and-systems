clear;clc;
w=0:0.05:pi;
h=exp(j*w);  %set h= exp(jw)
num=0.5+0*h.^-1+0.5*h.^-2;
den=1;
%Compute the frequency responses
H=num/den;
%Compute and plot the magnitude response
mag=abs(H);
figure(1),plot(w/pi,mag);
ylabel('Magnitude');xlabel('\omega/\pi');
%Compute and plot the phase responses
ph=angle(H)*180/pi;
figure(2),plot(w/pi,ph);
ylabel('Phase, degrees');
xlabel('\omega/\pi')	