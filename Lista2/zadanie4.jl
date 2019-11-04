#Eliza Zawisza
#244967

using Polynomials

givenCoefficient=Float64[1, -210.0, 20615.0,-1256850.0,
      53327946.0,-1672280820.0, 40171771630.0, -756111184500.0,
      11310276995381.0, -135585182899530.0,
      1307535010540395.0,     -10142299865511450.0,
      63030812099294896.0,     -311333643161390640.0,
      1206647803780373360.0,     -3599979517947607200.0,
      8037811822645051776.0,      -12870931245150988800.0,
      13803759753640704000.0,      -8752948036761600000.0,
      2432902008176640000.0];

#change order of coefficients
coefficient = reverse(givenCoefficient)

P = Poly(coefficient)
p = poly(Float64[1.0:20.0;])

computedRoots = roots(P)


for k in 1:20
      zk = computedRoots[k]
      Pzk = abs(polyval(P, zk))
      pzk = abs(polyval(p, zk))
      n = abs(zk - k)
      println("zk = $zk, \t|P(xk)| = $Pzk, \t |p(zk)| = $pzk, \t |zk-k| = $n")
      # println("$zk;$Pzk;$pzk;$n")
end
println("\n\n\n")

#Part B
givenCoefficient=Float64[1, -210.0 - (2)^(-23), 20615.0,-1256850.0,
      53327946.0,-1672280820.0, 40171771630.0, -756111184500.0,
      11310276995381.0, -135585182899530.0,
      1307535010540395.0,     -10142299865511450.0,
      63030812099294896.0,     -311333643161390640.0,
      1206647803780373360.0,     -3599979517947607200.0,
      8037811822645051776.0,      -12870931245150988800.0,
      13803759753640704000.0,      -8752948036761600000.0,
      2432902008176640000.0];

coefficient = reverse(givenCoefficient)
P = Poly(coefficient)
p = poly(Float64[1.0:20.0;])
computedRoots = roots(P)

for k in 1:20
      zk = computedRoots[k]
      Pzk = abs(polyval(P, zk))
      pzk = abs(polyval(p, zk))
      n = abs(zk - k)
      println("zk = $zk, \t|P(xk)| = $Pzk, \t |p(zk)| = $pzk, \t |zk-k| = $n")
      # println("$zk;$Pzk;$pzk;$n")
end
