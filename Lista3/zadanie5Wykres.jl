#Eliza Zawisza
#244967

using Plots
using SymPy

@vars x real=true
f(x) = 3*x - exp.(x)



# Function which generates plot of function f(x)
# start - begining of range
# stop - end of range

function generatePlot(start, stop)
        plot(f(x), start, stop, label="3x-e^x")
    file_name = string("ex5_plot_", abs(start), "_", abs(stop), ".png")
    savefig(file_name)
end

generatePlot(0, 2)
