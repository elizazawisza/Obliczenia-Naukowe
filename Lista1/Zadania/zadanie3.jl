# Eliza Zawisza, 244967

# delta - dtsnace between next two numbers in arithmetic
# beginning - begginning of the range

function check_delta_correctness(delta, beginning)
    for k in 1:8
        println(bitstring(Float64(beginning + k*delta)))
    end
end

println("Range [1, 2]:")
check_delta_correctness(Float64((2)^(-52)), Float64(1.0))

println("Range [1/2, 1]:")
println("Delta = 2^(-52)")
check_delta_correctness(Float64((2)^(-52)), Float64(0.5))
println("Delta = 2^(-51)")
check_delta_correctness(Float64((2)^(-51)), Float64(0.5))
println("Delta = 2^(-53)")
check_delta_correctness(Float64((2)^(-53)), Float64(0.5))

println("Range [2, 4]:")
println("Delta = 2^(-52)")
check_delta_correctness(Float64((2)^(-52)), Float64(2.0))
println("Delta = 2^(-51)")
check_delta_correctness(Float64((2)^(-51)), Float64(2.0))
println("Delta = 2^(-53)")
check_delta_correctness(Float64((2)^(-53)), Float64(2.0))
