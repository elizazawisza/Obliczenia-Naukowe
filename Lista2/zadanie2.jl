using Plots
using SymPy

@vars x real=true
f(x)= exp.(x) * log.(1.0 + exp.(-x))

#compute limit of f(x)
print("Limit of f(x) -> oo is " ,limit(f(x), x,oo))

# Function which generates plot of function f(x)
# start - begining of range
# stop - end of range

function generatePlot(start, stop)
    X = []
    Y = []

    for i in start:stop
        push!(X, Float64(i))
    end

    for x in X
        push!(Y, f(x))
    end

    plot(X, Y)
    file_name = string("ex2_plot_", abs(start), "_", abs(stop), ".png")
    savefig(file_name)
end

generatePlot(-10, 50)
generatePlot(30, 40)
