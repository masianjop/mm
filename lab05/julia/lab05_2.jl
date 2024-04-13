using Plots
using DifferentialEquations

a = 0.28
b = 0.29
c = 0.028
d = 0.029

x0 = c / d 
y0 = a / b

function ode_fn(du, u, p, t)
    x, y = u
    du[1] = -a*u[1] + c * u[1] * u[2]
    du[2] = b * u[2] - d * u[1] * u[2]
end

v0 = [x0, y0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.05)
X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt2 = plot(
  dpi=300,
  legend=true)

plot!(
  plt2,
  T,
  X,
  label="Численность жертв",
  color=:green)

plot!(
  plt2,
  T,
  Y,
  label="Численность хищников",
  color=:red)

savefig(plt2, "julia2.png")