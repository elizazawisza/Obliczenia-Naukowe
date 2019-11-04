#Eliza Zawisza
#244967

include("hilb.jl")
include("matcond.jl")

# Function which compute linear equation using Gauss elimination
# A - matrix
# b - vector
function gaussElimination(A,b)
    return A\b
end

# Function which compute linear equation using inversion method
# A - matrix
# b - vector
function inversionMethod(A,b)
    return inv(A)*b
end

# Function which calculates the aproxximation error
# apporxX - calculated vector
# x - real vector
function approximationError(apporxX, x)
    return norm(apporxX - x) / norm(x)
end


# Function which computes the equation using given matrix and  the approzimation
# error
# A - matrix
# n - matrix size
function compute(A,n)
    x = ones(Float64, n)
    b = A*x
    gaussX = gaussElimination(A,b)
    inversionX = inversionMethod(A,b)
    gaussAproxError = approximationError(gaussX,x)
    inversionApproxError = approximationError(inversionX,x)

    println("Size: $(n)x$(n)\tRank: $(rank(A))")
    println("Cond: $(cond(A))")
    println("Gauss error: $(gaussAproxError)\nInversion error: $(inversionApproxError)\n")
end



println("Hilbert Matrix\n")
for i = 1: 20
    compute(hilb(i),i)
end

println("\n\nRandom Matrix\n")
for n in [5, 10, 20], c = [Float64(1), Float64(10), Float64(10^3), Float64(10^7), Float64(10^12), Float64(10^16)]
        compute(matcond(n,c), n)
end
