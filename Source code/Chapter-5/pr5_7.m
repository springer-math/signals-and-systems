[N,Wn]=buttord( 1,8.26,2,10,'s');
[B,A]=butter(N,Wn,'s'); 
[num, den]=lp2bp(B,A, 45.9271,9.55);%   [num, den]=lp2bp(B,A, ?_o, bw);