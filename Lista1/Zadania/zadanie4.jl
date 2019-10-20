# Eliza Zawisza, 244967

function findSmallestInRange()
	x = nextfloat(Float64(1.0))
	while Float64(x * Float64(1 / x)) == 1
		x = nextfloat(Float64(x))
	end
return x
end

function findSmallest()
	x = -floatmax(Float64)
	while Float64(x * Float64(1 / x)) == 1
		x = nextfloat(Float64(x))
	end
return x
end

println("Smallest x in range (1,2): ", findSmallestInRange())
println("Total smallest x: ",findSmallest())
