#Eliza Zawisza
#244967
using Plots

#Function which compute the basic algorithm of population growth
# Type - type of arithmetic
# p - size of population
# r - given const


function basicAlgorithm(Type, p, r)
    results = Type[]
    for i in 1:40
        p = p + Type(r * p * (Type(1.0) - p))
        push!(results, p)
    end
    return results
end

#Function which compute the basic algorithm of population growth
# Type - type of arithmetic
# p - size of population
# r - given const

function modifiedAlgorithm(Type, p, r)
    results = Type[]
    for i in 1:10
        p = p + Type(r * p * (Type(1.0) - p))
        if i == 10
            p = trunc(p, digits=3)
        end
        push!(results, p)
    end
    for i in 11:40
        p = p + Type(r * p * (Type(1.0) - p))
        push!(results, p)
    end
    return results
end


resultsA = basicAlgorithm(Float32, Float32(0.01), Float32(3.0))
resultsB = modifiedAlgorithm(Float32, Float32(0.01), Float32(3.0))

#generate plot for part 1
labels = ["Float32 modified" "Float32"]
plot(x = 1:40, [resultsA, resultsB], label = labels)
file_name = string("part1.png")
savefig(file_name)

println("Basic algorithm for Float32")
println(resultsA)
println("\n\n")
println("Modified algorithm for Float32")
println(resultsB)

resultsA = basicAlgorithm(Float32, Float32(0.01), Float32(3.0))
resultsB = basicAlgorithm(Float64, Float64(0.01), Float64(3.0))


#generate plot for part 2
labels = ["Float64" "Float32"]
plot(x = 1:40, [resultsA, resultsB], label = labels)
file_name = string("part2.png")
savefig(file_name)

println("Basic algorithm for Float32")
println(resultsA)
println("\n\n")
println("Basic algorithm for Float64")
println(resultsB)
