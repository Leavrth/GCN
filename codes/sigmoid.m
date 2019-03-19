function [E] = sigmoid(e, W)
	z = e * W;
	E = 1/(1+exp(-z));
end