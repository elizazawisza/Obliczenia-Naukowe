# Eliza Zawisza, 244967

# Type - type of arithmetic
function Kahan_Macheps(Type)
    return Type(3.0) * (Type(4.0) / Type(3.0) - Type(1.0)) - Type(1.0)
end

println("macheps by Kahan method Type - Float16: ", Kahan_Macheps(Float16))
println("macheps Float16: ", eps(Float16))

println("macheps by Kahan method Type - Float32: ", Kahan_Macheps(Float32))
println("macheps Float32: ", eps(Float32))

println("macheps by Kahan method Type - Float64: ", Kahan_Macheps(Float64))
println("macheps Float64: ", eps(Float64))
