#Eliza Zawisza
#244967

#Tests for zero methods with wrong and good arguments
include("MiejscaZerowe.jl")


f(x) = x^3 - 8
g(x) = x^2 - 9
pf(x) = 3*(x^2)
pg(x) = 2*x

delta = 10.0^-5.0
epsilon = 10.0^-4.0
maxit = 64

println("x^3 - 8")

println("Metoda bisekcji: \n")
println("prawidłowe argumenty: ")
a = 0.5
b = 4.0
(r,v,it,err) = MiejscaZerowe.mbisekcji(f, a, b, delta, epsilon)
println("Range: [$(a),$(b)], r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)\n")

println("błędne argumenty: ")
a = 2.5
b = 4.0
(r,v,it,err) = MiejscaZerowe.mbisekcji(f, a, b, delta, epsilon)
println("Range: [$(a),$(b)], r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)\n")


println("Metoda stycznych: \n")
println("prawidłowe argumenty: ")
x0 = 6.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f, pf, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)\n")
println("błędne argumenty: ")
x0 = 0.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f, pf, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)\n")

println("Metoda siecznych: \n")
println("prawidłowe argumenty: ")
x0 = 1.0
x1 = 5.0
(r,v,it,err) = MiejscaZerowe.msiecznych(f, 1.0, 5.0, delta, epsilon, maxit)
println("x0: $(x0), x1: $(x1),r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)")


println("x^2 - 9")

println("Metoda bisekcji: \n")
println("prawidłowe argumenty: ")
a = 2.5
b = 6.0
(r,v,it,err) = MiejscaZerowe.mbisekcji(g, a, b, delta, epsilon)
println("Range: [$(a),$(b)], r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)\n")

println("błędne argumenty: ")
a = 1.0
b = 2.5
(r,v,it,err) = MiejscaZerowe.mbisekcji(g, a, b, delta, epsilon)
println("Range: [$(a),$(b)], r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)\n")




println("Metoda stycznych: \n")
println("prawidłowe argumenty: ")
x0 = 1.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f, pf, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)\n")
println("błędne argumenty: ")
x0 = 0.0
(r,v,it,err) = MiejscaZerowe.mstycznych(f, pf, x0, delta, epsilon, maxit)
println("x0: $(x0), r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)\n")


println("Metoda siecznych: ")
println("prawidłowe argumenty: ")
(r,v,it,err) = MiejscaZerowe.msiecznych(g, 1.0, 6.5, delta, epsilon, maxit)
println("r: $(r)\t v: $(v)\t it: $(it)\t err: $(err)")
