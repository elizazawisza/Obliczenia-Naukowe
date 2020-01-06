#Eliza Zawisza
#244967

include("MiejscaZerowe.jl")

f(x) = sin(x) - (x/2)^2
pf(x) = cos(x) - x/2
maxit = 20
delta = 0.5*10^-5.0
epsilon = 0.5*10^-5.0

# Bisection method
println("Bisection method:")
a = 1.5
b = 2.0
(r,v,it,err) = MiejscaZerowe.mbisekcji(f, a, b, delta, epsilon)
println("r: $(r), v: $(v), it: $(it), err: $(err)")

# Tangent/Newton's method
println("Newton's method:")
x0 = 1.5
(r,v,it,err) = MiejscaZerowe.mstycznych(f, pf, x0, delta, epsilon, maxit)
println("r: $(r), v: $(v), it: $(it), err: $(err)")

# Secant method
println("Secant method:")
x0 = 1.0
x1 = 2.0
(r,v,it,err) = MiejscaZerowe.msiecznych(f, 1.0, x1, delta, epsilon, maxit)
println("r: $(r), v: $(v), it: $(it), err: $(err)")
