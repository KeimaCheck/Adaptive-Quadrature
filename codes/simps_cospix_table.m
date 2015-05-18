fprintf('N        CSQ(N)\n');
func = @(x) cos(pi*x); a =0; b = 20;
for n=2:50
    fprintf('%i    %.11f\n',n,simps(func,a,b,n));
end