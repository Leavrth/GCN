function [W_1, W_2, W_3] = initW(N)
	W_1 = normrnd(0,1,[N,N]);  %一个N*N
	W_2 = normrnd(0,1,[N,2]);  %一个N*2
	W_3 = normrnd(0,1,[2,1]);  %一个2*1
end