#Eliza Zawisza
#244967

include("interpolation.jl")
f(x) = exp.(x)
a = Float64(0.0)
b = Float64(1.0)
Interpolation.rysujNnfx(f, a, b, 5)
Interpolation.rysujNnfx(f, a, b, 10)
Interpolation.rysujNnfx(f, a, b, 15)


g(x) = (x^2) * sin.(x)
a = Float64(-1.0)
b = Float64(1.0)
Interpolation.rysujNnfx(g, a, b, 5)
Interpolation.rysujNnfx(g, a, b, 10)
Interpolation.rysujNnfx(g, a, b, 15)
