# Eliza Zawisza, 244967

# x - function argument
function f(x)
    return Float64(sqrt(x^2 + 1) - 1)
end
# x - function argument
function g(x)
    return Float64(x^2/(sqrt(x^2 + 1) + 1))
end

for i = 1 : 100
    x = Float64(8)^-i
    println("f(8^", i, "):\t", f(x), ", g(8^", i, "):\t", g(x))
end
