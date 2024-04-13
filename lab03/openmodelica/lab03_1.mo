model lab3 "Battle between forces"
parameter Integer x0 = 25000;
parameter Integer y0 = 39000;
parameter Real a = 0.441;
parameter Real b = 0.773;
parameter Real c = 0.55;
parameter Real h = 0.664;
Real P;
Real Q;
Real x(start=x0);
Real y(start=y0);
equation
P = sin(2 * time);
Q = cos(2 * time);
der(x) = - a * x - b * y + P + 1;
der(y) = - c * x - h * y + Q + 1;
end lab3;