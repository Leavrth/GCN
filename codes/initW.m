function [W_1, W_2, W_3] = initW(N)
	W_1 = normrnd(0,1,[N,N]);  %һ��N*N
	W_2 = normrnd(0,1,[N,2]);  %һ��N*2
	W_3 = normrnd(0,1,[2,1]);  %һ��2*1
end