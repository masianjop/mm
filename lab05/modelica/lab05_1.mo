model lab51
  Real a = 0.28;
  Real b = 0.29;
  Real c = 0.028;
  Real d = 0.029;
  Real x;
  Real y;
initial equation
  x = c/d;
  y = a/b;
equation
  der(x) = -a*x + c*x*y;
  der(y) = b*y - d*x*y;
  annotation(
    experiment(StartTime = 0, StopTime = 60, Tolerance = 1e-06, Interval = 0.05));
end lab51;
