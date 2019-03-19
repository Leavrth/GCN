function [z_1, E_1, z_2, E_2, E_3, loss] = front(L, I, W_1, W_2, W_3, nn, y)
	z_1 = L * I * W_1;
	E_1 = (abs(z_1) + z_1) / 2;
	z_2 = L * E_1 * W_2;
	E_2 = (abs(z_2) + z_2) / 2;
	E_3 = sigmoid(E_2(nn,:), W_3);
	loss = -(y*log(E_3) + (1-y)*log(1-E_3));
end