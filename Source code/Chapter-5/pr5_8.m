[N,Wn]=buttord( 1,6.5397,3,15,'s');
[B,A]=butter(N,Wn,'s'); 
[num, den]=lp2bs(B,A,100,425.02);%   [num, den]=lp2bs(B,A, ?_o, bw);