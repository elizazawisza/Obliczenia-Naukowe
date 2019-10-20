# Eliza Zawisza, 244967


# Type - type of arithmetic
function findMacheps(Type)
  macheps = Type(1.0)
  divider = Type(2.0)

  while Type(1.0) + macheps/divider > Type(1.0)
    macheps = macheps/divider
  end
return macheps
end

# Type - type of arithmetic
function findEta(Type)
  eta = Type(1.0)
  divider = Type(2.0)

  while eta/divider > Type(0.0)
    eta = eta/divider
  end
return eta
end

# Type - type of arithmetic 
function findMax(Type)
    max = Type(1.0)
    multiplier = Type(2.0)

    while !isinf(max*multiplier)
        max = max*multiplier
    end
    max = max * (Type(2.0)-eps(Type))
  return max
end


println("computed macheps Float16: ", findMacheps(Float16),"\t macheps Float16: ", eps(Float16))
println("computed macheps Float32: ", findMacheps(Float32),"\t macheps Float32: ", eps(Float32))
println("computed macheps Float64: ", findMacheps(Float64),"\t macheps Float64: ", eps(Float64))

println("computed eta Float16: ", findEta(Float16),"\t eta Float16: ", nextfloat(Float16(0.0)))
println("computed eta Float32: ", findEta(Float32),"\t eta Float32: ", nextfloat(Float32(0.0)))
println("computed eta Float64: ", findEta(Float64),"\t eta Float64: ", nextfloat(Float64(0.0)))

println("computed MAX Float16: ", findMax(Float16),"\t MAX Float16: ", floatmax(Float16))
println("computed MAX Float32: ", findMax(Float32),"\t MAX Float32: ", floatmax(Float32))
println("computed MAX Float64: ", findMax(Float64),"\t MAX Float64: ", floatmax(Float64))
