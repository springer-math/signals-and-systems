clear;clc;
flag=input('enter 1 for impulse response, and 2 for step response');
len=input('enter desired response length=');
b=[1 -2];%b coefficients of the difference equation
a=[1 0.1 -0.06]; %a coefficients of the difference equation
if flag==1;
x=[1,zeros(1,len-1)];
end
if flag==2;
x=[ones(1,len)];
end
y=filter(b,a,x);
n=0:1:len-1;	
stem(n,y)
xlabel('Time index n'); ylabel('Amplitude');	