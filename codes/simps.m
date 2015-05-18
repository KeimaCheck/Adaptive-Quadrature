function sa = simps(func,a,b,N)
% performs a simple simpson's rule approximation
h = (b-a)/(N-1);
xi = a + h*(0:N-1); fi = feval(func,xi);
sa = h/3*sum(fi(1:2:N-2) + 4*fi(2:2:N-1) + fi(3:2:N));
xs = linspace(a,b,2000); fs = feval(func,xs);
plot(xs,fs,xi,fi,'o')
end