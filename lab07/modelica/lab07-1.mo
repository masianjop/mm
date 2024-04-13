model lab07_1
Real N = 709;
Real n;
initial equation
n = 4;
equation
der(n) = (0.74 + 0.000047*n)*(N-n);
annotation(
    experiment(StartTime = 0, StopTime = 30, Tolerance = 1e-6, Interval = 0.05));
end lab07_1;