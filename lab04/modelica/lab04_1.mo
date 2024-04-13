model lab41
Real x;
Real y;
Real w = 1.7;
Real g = 0.0;
Real t = time;
initial equation
x = 1.7;
y = -0.2;
equation
der(x) = y;
der(y) = -(w*w)*x - g*y;
end lab41;