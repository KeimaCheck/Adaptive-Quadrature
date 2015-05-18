function [Q,nodes] = adaptive_simps(F,a,b,tol)
% based off of the matlab function quadtx
if nargin < 4 | isempty(tol)
tol = 1.e-6;
end
% initialize
c = (a + b)/2;
fa = F(a);
fc = F(c);
fb = F(b);
% recursive call
[Q,k] = as_halp(F, a, b, tol, fa, fc, fb);
nodes = [k a b];