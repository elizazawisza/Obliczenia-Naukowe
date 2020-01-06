#Eliza Zawisza
#244967
include("MiejscaZerowe.jl")

f1(x) = (exp.(1-x) - 1)
f2(x) = (exp.(-x)*x)
delta = 10^-5.0
epsilon = 10^-5.0
maxit = 100
pf1(x) = -exp.(1.0 - x)
pf2(x) = -exp.(-x) * (x - 1.0)

# Bisection method
println("exp.(1-x) - 1")
println("Bisection method:")
a = 0.0
b = 2.0
(r,v,it,err) = MiejscaZerowe.mbisekcji(f1, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")
a = 0.5
b = 2.5
(r,v,it,err) = MiejscaZerowe.mbisekcji(f1, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")
a = -1.4
b = 3.2
(r,v,it,err) = MiejscaZerowe.mbisekcji(f1, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")
a = 0.8
b = 5.2
(r,v,it,err) = MiejscaZerowe.mbisekcji(f1, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")
a = 0.99
b = 1.02
(r,v,it,err) = MiejscaZerowe.mbisekcji(f1, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")

# Tangent/Newton's method
println("Newton's method:")
x0 = -2.5
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 0.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 0.97
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 1.9
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 4.3
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

# Secant method
println("Secant method:")
x0 = -2.0
x1 = 3.0
(r,v,it,err) = MiejscaZerowe.msiecznych(f1, x0, x1, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 0.5
x1 = 2.5
(r,v,it,err) = MiejscaZerowe.msiecznych(f1, x0, x1, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 0.7
x1 = 1.5
(r,v,it,err) = MiejscaZerowe.msiecznych(f1, x0, x1, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 0.91
x1 = 1.07
(r,v,it,err) = MiejscaZerowe.msiecznych(f1, x0, x1, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1), r: $(r), v: $(v), it: $(it), err: $(err)")


println("exp.(-x)*x")

println("Bisection method:")
a = -1.0
b = 2.0
(r,v,it,err) = MiejscaZerowe.mbisekcji(f2, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")
a = -0.75
b = 0.5
(r,v,it,err) = MiejscaZerowe.mbisekcji(f2, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")
a = -1.4
b = 0.2
(r,v,it,err) = MiejscaZerowe.mbisekcji(f2, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")
a = -0.5
b = 0.5
(r,v,it,err) = MiejscaZerowe.mbisekcji(f2, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")
a = -0.01
b = 0.02
(r,v,it,err) = MiejscaZerowe.mbisekcji(f2, a, b, delta, epsilon)
println("Range: [$(a),$(b)] ,r: $(r), v: $(v), it: $(it), err: $(err)")

# Tangent/Newton's method
println("Newton's method:")
x0 = -2.5
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 0.01
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = -0.97
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 1.2
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = -4.3
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

# Secant method
println("Secant method:")
x0 = -0.5
x1 = 0.1-0.5
(r,v,it,err) = MiejscaZerowe.msiecznych(f2, x0, x1, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 0.0
x1 = 0.5
(r,v,it,err) = MiejscaZerowe.msiecznych(f2, x0, x1, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = -0.7
x1 = 1.5
(r,v,it,err) = MiejscaZerowe.msiecznych(f2, x0, x1, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = -0.91
x1 = 1.07
(r,v,it,err) = MiejscaZerowe.msiecznych(f2, x0, x1, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1), r: $(r), v: $(v), it: $(it), err: $(err)")



println("\n\n\n")
println("PART 2")
println("Newton's method F1:")
x0 = 2.5
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 10.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 100.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 1000.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f1, pf1, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

println("Newton's method F2:")
x0 = 1.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 10.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 100.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")

x0 = 1000.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f2, pf2, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r), v: $(v), it: $(it), err: $(err)")
