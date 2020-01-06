#Eliza Zawisza
#244967
include("MiejscaZerowe.jl")

f(x) = 3*x - exp.(x)
delta = 10^-4.0
epsilon = 10^-4.0

# Bisection method
println("Range: [0,1]")
a = 0.0
b = 1.0
(r,v,it,err) = MiejscaZerowe.mbisekcji(f, a, b, delta, epsilon)
println("r: $(r), v: $(v), it: $(it), err: $(err)")

println("Range: [1,2]")
a = 1.0
b = 2.0
(r,v,it,err) = MiejscaZerowe.mbisekcji(f, a, b, delta, epsilon)
println("r: $(r), v: $(v), it: $(it), err: $(err)")
