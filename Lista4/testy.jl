#Eliza Zawisza
#244967

include("interpolation.jl")
using Test

# Testy zadanie 1
x1 = [1.0, 3.0, 2.0, 6.0]
f1 = [-3.0, 4.0, 1.0, 4.0]

expected_values_1 = [-3.0, 3.5, -0.5, -0.05]

x2 = [-3.0, 7.0, -1.0, 2.0, 1.0]
f2 = [5.0, -1.0, 0.0, -3.0, 2.0]
expected_values_2 = [5.0, -0.6, 0.2375, -0.0125, 0.09375]

@testset "Ilorazy roznicowe testy" begin
    @test isapprox(Interpolation.ilorazyRoznicowe(x1, f1), expected_values_1)
    @test isapprox(Interpolation.ilorazyRoznicowe(x2, f2), expected_values_2)
end

# Testy zadanie 2
fx2 = Interpolation.ilorazyRoznicowe(x2, f2)
fx1 = Interpolation.ilorazyRoznicowe(x1, f1)

@testset "Wartosc wielomianu Newtona testy" begin
    @test isapprox(Interpolation.warNewton(x2, fx2, 1.0), 2.0)
    @test isapprox(Interpolation.warNewton(x2, fx2, 10.0), 322.85)
    @test isapprox(Interpolation.warNewton(x2, fx2, -10.0), 1255.725)
    @test isapprox(Interpolation.warNewton(x2, fx2, -1.0), 0.0)
end

# Testy zadanie 3
expected_values_3 = [-7.7, 4.95, -0.2, -0.05]
@testset "Naturalne wspolczynniki wielomianu Newtona testy" begin
    @test isapprox(Interpolation.naturalna(x1, fx1), expected_values_3)
end
