function [dW1, dW2, dW3] = backGrad(h, L, E_1, E_2, W_2, W_3, nn, y)
	d3 = h - y;
	el_2 = E_2(nn,:);
	dW3 = d3 * el_2';
	el_2(find(el_2>0))=1;
	d2 = d3 * (el_2'.*W_3);
	LEl = (L * E_1);
	LEl = [LEl(nn,:)',LEl(nn,:)'];
	dW2 = d2'.*LEl;
	eRelu = E_1;
	eRelu(find(eRelu>0))=1;
	%(a,b)
	La = L(nn,:).*eRelu(nn,:)*L;
	dW1 = d2(1).*(W_2(:,1)*La)' + d2(2).*(W_2(:,2)*La)';
end