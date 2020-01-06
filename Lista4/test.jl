include("interpolation.jl")

x1 = [-1.0, 0.0, 1.0, 2.0]
f1 = [-1.0, 0.0, -1.0, 2.0]

fx1 = Interpolation.ilorazyRoznicowe(x1, f1)

println(Interpolation.naturalna(x1, fx1))
