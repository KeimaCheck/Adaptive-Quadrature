function [Q,nodes] = as_halp(F,a,b,tol,fa,fc,fb)
% recursion used by adaptive_simps
h = b - a;
c = (a + b)/2;
fd = F((a+c)/2);
fe = F((c+b)/2);
Q1 = h/6 * (fa + 4*fc + fb);
Q2 = h/12 * (fa + 4*fd + 2*fc + 4*fe + fb);
if abs(Q2 - Q1) <= tol
Q = Q2 + (Q2 - Q1)/15;
nodes = [c];
else
[Qa,ka] = as_halp(F, a, c, tol, fa, fd, fc);
[Qb,kb] = as_halp(F, c, b, tol, fc, fe, fb);
Q = Qa + Qb;
nodes = [c ka kb];
end