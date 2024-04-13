model lab06_1
Real N = 17854;
Real I;
Real R;
Real S;
Real alpha = 0.4;
Real beta = 0.3;
initial equation
I = 199;
R = 35;
S = N - I - R;
equation
der(S) = 0;
der(I) = -beta*I;
der(R) = beta*I;
annotation(
    experiment(StartTime = 0, StopTime = 100, Tolerance = 1e-6, Interval = 0.05));
end lab06_1;