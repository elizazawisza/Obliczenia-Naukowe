# Eliza Zawisza, 244967

# x - function argument in specific type 
function f(x)
    return sin(x) + cos(3x)
end

# x - function argument in specific type
function fApxDerivative(x0, h)
    return (f(x0 + h) - f(x0)) / h
end

# x - function argument in specific type
function fDerivative(x)
    return cos(x) - 3sin(3x)
end

# realValue - real value of derivative
# approximateValue - result of the fApxDerivative approximate value of derivative
function approximationError(realValue, approximateValue)
    return abs(realValue-approximateValue)
end

    x = Float64(1.0)
    derivative = fDerivative(x)
for n in 0:54
    h = Float64(2.0)^-n
    approximateDreivative = fApxDerivative(x, h)
    error = approximationError(derivative, approximateDreivative)
    println("h =  2^(-", n,")   1+h: ", x+h,"   Approximate derivatie: ", approximateDreivative,"   Approximation Error: ", error)

end
