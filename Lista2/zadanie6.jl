#Eliza Zawisza
#244967

using Plots

#Function wich computes recursive eqution xn+1 = xn^2 + c
#x0 - value of x
#n - number of iterations
#c - value od c

function compute(x0, n, c)
    if n == 0 return x0
      else
        x = compute(x0, n-1, c)
        return (x^2 + c)
      end
end

Y = zeros(40)

# Function which generates plot for given values
# Y - values
# fileName - name of file to save plot

function generatePlot(Y, filename)
  plot(x = 1:40, Y)
  savefig(filename)
  println(Y)
end

# c = -2, x0 = 1
for i = 1:40
  Y[i] = compute(Float64(1), i, Float64(-2))
end
fileName = string("ex6_plot_data1.png")
generatePlot(Y, fileName)


# c = -2, x0 = 2
for i = 1:40
  Y[i] = compute(Float64(2), i, Float64(-2))
end
fileName = string("ex6_plot_data2.png")
generatePlot(Y, fileName)

# c = -2, x0 = 1.99999999999999
for i = 1:40
  Y[i] = compute(Float64(1.99999999999999), i, Float64(-2))
end
fileName = string("ex6_plot_data3.png")
generatePlot(Y, fileName)

# c = -1, x0 = 1
for i = 1:40
  Y[i] = compute(Float64(1), i, Float64(-1))
end
fileName = string("ex6_plot_data4.png")
generatePlot(Y, fileName)

# c = -1, x0 = -1
for i = 1:40
  Y[i] = compute(Float64(-1), i, Float64(-1))
end
fileName = string("ex6_plot_data5.png")
generatePlot(Y, fileName)

# c = -1, x0 = 0.75
for i = 1:40
  Y[i] = compute(Float64(0.75), i, Float64(-1))
end
fileName = string("ex6_plot_data6.png")
generatePlot(Y, fileName)

# c = -1, x0 = 0.25
for i = 1:40
  Y[i] = compute(Float64(0.25), i, Float64(-1))
end
fileName = string("ex6_plot_data7.png")
generatePlot(Y, fileName)
