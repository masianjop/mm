using Plots
using DifferentialEquations

x0 = 25000
y0 = 39000
t0 = 0

a = 0.399 # army X casualties factor
b = 0.688 # Y army efficiency
c = 0.299 # X army efficiency
h = 0.811 # army Y casualties factor

p = (a, b, c, h)
quantity = [x0,y0]

P(t) = sin(2*t)
Q(t) = cos(3*t)

#differential system
function rr_warfare(dF,u,p,t)
    a, b, c, h = p
    dF[1] = -a * u[1] - b * u[2] + P(t) + 2
    dF[2] = -c * u[1] * u[2] - h * u[2] + Q(t) + 1
end

T = [0.0,0.0005] 

problem = ODEProblem(rr_warfare,quantity,T,p)
solution = solve(problem, dtmax = 0.000001)

A1 = [u[1] for u in solution.u]
A2 = [u[2] for u in solution.u]
T1 = [t for t in solution.t]


plt1 = plot(dpi = 300, legend= true, bg =:white)
plot!(plt1, xlabel="Время", ylabel="Численность", title="Модель Регулярная армия vs Партизаны", legend=:outerbottom)
plot!(plt1, T1, A1, label="Численность армии X", color =:red)
plot!(plt1, T1, A2, label="Численность армии Y", color =:green)
savefig(plt1, "lab03_2.png")