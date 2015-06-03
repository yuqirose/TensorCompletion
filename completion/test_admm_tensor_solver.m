sz = [4,5,6];
n = prod(sz);
Omega = randsample(1:n, ceil(0.8 * n))';
M = tenrand(sz);
b = M(Omega);
sub_idx = cell(1,3);
for j = 1:3
    sub_idx{j} = 1:sz(j);
end
lambda = 1e-1;
rho = 1e2;
maxiter = 10;


[ Z,X,obj] = admm_tensor_solver( sz,Omega, b, sub_idx, lambda, rho, maxiter );
plot(obj);