function Q = adaptive_simps_test_sinc(func,a,b);
a = 0; b = 20
xi = linspace(a,b);
func = @(x) cos(pi*x);
yi = feval(func,xi);
[Q, xs] = adaptive_simps(func,a,b);
ys = feval(func,xs);
plot(xi, feval(func,xi),xs,ys,'o');