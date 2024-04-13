model lab07_3
Real N = 709;
Real n;
initial equation
n = 4;
equation
der(n) = (0.84 * sin(time) + 0.84*time*n)*(N-n);
annotation(
    experiment(StartTime = 0, StopTime = 0.1, Tolerance = 1e-6, Interval = 0.002));
end lab07_3;