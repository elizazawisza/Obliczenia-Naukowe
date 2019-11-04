# Eliza Zawisza, 244967

x = [2.718281828,-3.141592654, 1.414213562, 0.5772156649, 0.3010299957]
y = [1486.2497, 878366.9879, -22.37492, 4773714.647, 0.000185049]
n = 5

# Type - type of arithmetic
function a(Type)
    sum = Type(0.0)
    for i = 1:n
        sum+= Type(x[i])*Type(y[i])
    end
    return sum
end

# Type - type of arithmetic
function b(Type)
    sum = Type(0.0)
    i = n
    while i != 0
        sum+= Type(x[i])*Type(y[i])
        i = i - 1
    end
    return sum
end

# Type - type of arithmetic
function computeScalarProduct(Type)
    array = []
    for i = 1:n
        push!(array, Type(x[i])*Type(y[i]))
    end
    return array
end

# Type - type of arithmetic
# negativeElements - array contains scalar products < 0
# negativeElements - array contains scalar products > 0

function computeSortSum(negativeElements, positiveElements, Type)
    sumNeagtive = Type(0.0)
    sumPositive = Type(0.0)

    for i in 1:length(negativeElements)
        sumNeagtive += negativeElements[i]
    end

    for i in 1:length(positiveElements)
        sumPositive += positiveElements[i]
    end

   return sumPositive + sumNeagtive
end

# Type - type of arithmetic
function c(Type)
    productArray = computeScalarProduct(Type)
    negativeElements=[]
    positiveElements=[]

    for i = 1:length(productArray)
        if productArray[i] > 0.0
            push!(positiveElements, productArray[i])
        else
            push!(negativeElements, productArray[i])
        end
    end

    sort!(negativeElements)
    sort!(positiveElements, rev = true)

    sum = computeSortSum(negativeElements, positiveElements, Type)
    return sum
end

# Type - type of arithmetic
function d(Type)
    productArray = computeScalarProduct(Type)
    negativeElements=[]
    positiveElements=[]

    for i = 1:length(productArray)
        if productArray[i] > 0.0
            push!(positiveElements, productArray[i])
        else
            push!(negativeElements, productArray[i])
        end
    end

    sort!(negativeElements, rev = true)
    sort!(positiveElements)

    sum = computeSortSum(negativeElements, positiveElements, Type)
    return sum
end

println("FLOAT 32:")
println("Result in A: ", a(Float32))
println("Result in B: ", b(Float32))
println("Result in C: ", c(Float32))
println("Result in D: ", d(Float32))


println("FLOAT 64:")
println("Result in A: ", a(Float64))
println("Result in B: ", b(Float64))
println("Result in C: ", c(Float64))
println("Result in D: ", d(Float64))
