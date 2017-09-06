clear all;
close all;
tx=[0:0.01:5];
tx1=[0:0.01:3];
x=[zeros(1,length(tx1)) ones(1,(length(tx)-length(tx1)))];
th=[0:0.01:5];
h =(3)* exp(-3*th);
[y ty]=convint(x,tx,h,th);
figure;
plot(ty,y);
xlabel('Time')
ylabel('Amplitude');