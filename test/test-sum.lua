require 'autograd'

function fn_sum(A)
	B = A + 3
	C = 3 + B
	D = C + C
	E = torch.sum(D)
	return E
end

A = torch.FloatTensor(3,3):fill(2)
print(fn_sum(A))

dfn_sum = grad(fn_sum)
Q = torch.FloatTensor(3,3):fill(2)
print(dfn_sum(Q))