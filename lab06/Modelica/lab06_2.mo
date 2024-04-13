model lab06_2
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
der(S) = -alpha*S;
der(I) = alpha*S - beta*I;
der(R) = beta*I;
annotation(
    experiment(StartTime = 0, StopTime = 60, Tolerance = 1e-6, Interval = 0.05));
end lab06_2;