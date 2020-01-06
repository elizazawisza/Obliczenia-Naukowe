#Eliza Zawisza
#244967

using Plots
using SymPy

@vars x real=true
f1(x) = (exp.(1-x) - 1)
f2(x) = (exp.(-x)*x)
pf1(x) = -exp.(1.0 - x)
pf2(x) = -exp.(-x) * (x - 1.0)


# Function which generates plot of function f(x)
# start - begining of range
# stop - end of range

function generatePlot(f, start, stop, plotlabel)
        plot(f(x), start, stop, label=plotlabel)
    file_name = string("ex6_plot_",plotlabel, abs(start), "_", abs(stop), ".png")
    savefig(file_name)
end

generatePlot(f1, -2, 3, "e^(1-x)-1")
generatePlot(f2, -2, 3, "x*e^-x)")
generatePlot(pf1, 0, 15, "-e^(1-x)")
generatePlot(pf2, 0, 15, "-e^(-x)*(x-1.0)")
