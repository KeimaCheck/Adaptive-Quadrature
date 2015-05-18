fprintf('  f    [a,b]      Simpson rule    Adaptive Simpson rule\n');
qa = simps(@sinc,0,2*pi,10);
qb = adaptive_simps(@sinc, 0, 2*pi);
fprintf('sinc  [0, 2pi]     %.10f               %.10f\n', qa,qb);

func = @(x) x.^3 - x.^2 + x - 1;
qa = simps(func,0,2.5,10);
qb = adaptive_simps(func, 0, 2.5);
fprintf('cubic  [0, 2.5]    %.8f        %.10f\n', qa,qb);

func = @erf;
qa = simps(func,-pi,pi,10);
qb = adaptive_simps(func, -pi, pi);
fprintf('erf  [-pi, pi]    %.8f        %.10f\n', qa,qb);

qa = simps(func,-2,pi,10);
qb = adaptive_simps(func, -2, pi);
fprintf('erf  [-2, pi]      %.8f        %.10f\n', qa,qb);

func = @log;
qa = simps(func,1,3,10);
qb = adaptive_simps(func, 1,3);
fprintf('log  [1,3]         %.8f        %.10f\n', qa,qb);