a=[ 2 -1 0 0 ];% first sequence
b=[-1 2 1];% second sequence
c=conv(a,b);% convolution of first sequence and second sequence
len=length(c)-1;
n=0:1:len;
stem(n,c)
xlabel('Time index n'); ylabel('Amplitude');
axis([0 5 -3 5])