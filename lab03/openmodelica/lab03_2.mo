model lab43
Real x;
Real y;
Real w = 1.7;
Real g = 2.0;
Real t = time;
initial equation
x = 1.7;
y = -0.2;
equation
der(x) = y;
der(y) = -(w*w)*x - g*y + 0.7*cos(2.7*t);
end lab43;
