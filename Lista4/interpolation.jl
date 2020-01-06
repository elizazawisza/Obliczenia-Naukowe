#Eliza Zawisza
#244967

module Interpolation
using PyPlot

# Funkcja obliczająca ilorazy różnicowe
# x – wektor długości n + 1, zawierający węzły x[1] = x0 , x[n+1] = xn
# f – wektor długości n + 1, zawierający wartości interpolowanej funkcji w węzłach

    function ilorazyRoznicowe(x::Vector{Float64}, f::Vector{Float64})
        n = length(f)
        fx = Vector{Float64}(undef, n)
        for i in 1:n
            fx[i] = f[i]
        end
        for i = 2:n
            for j = n:-1:i
                fx[j] = (fx[j] - fx[j - 1]) / (x[j] - x[j - i + 1])
            end
        end
        return fx
    end

# Funkcja obliczająca wartość wielomianu interpolacyjnego w postaci Newtona
# x – wektor długości n + 1, zawierający węzły x[1] = x0 , x[n+1] = xn 
# fx – wektor długości n + 1, zawierający obliczone ilorazy różnicowe
# t – punkt, w którym należy obliczyć wartość wielomianu

    function warNewton(x::Vector{Float64}, fx::Vector{Float64}, t::Float64)
        n = length(x)
        nt = fx[n]
        for i = n-1:-1:1
            nt = fx[i] + (t-x[i]) * nt
        end
        return nt
    end

# Funkcja obliczająca współczynniki naturalne wilomianu interpolacyjnego w postaci Newtona
# x – wektor długości n + 1, zawierający węzły x[1] =x0  , x[n+1] =xn 
# fx – wektor długości n + 1, zawierający obliczone ilorazy różnicowe

    function naturalna(x::Vector{Float64}, fx::Vector{Float64})
        n = length(x)
        a = Vector{Float64}(undef, n)
        a[n] = fx[n]
        for i = n-1:-1:1
            a[i] = fx[i] - a[i + 1] * x[i]
            for j = i+1:n-1
                a[j] = a[j] - a[j + 1] * x[i]
            end
        end
        return a
    end

# Funkcja interpolująca zadaną funkcję za pomocą wielomianu stopnia n w postaci
# Newtona, zwracjąca wykresy zadanej funkcji oraz jej wielomianu interpolacyjnego
#f – funkcja , zadana jako anonimowa funkcja, 
# a,b – przedział interpolacji, 
# n – stopień wielomianu interpolacyjnego

    function rysujNnfx(f, a :: Float64, b :: Float64, n :: Int)
    x = Vector{Float64}(undef, n+1)
    y = Vector{Float64}(undef, n+1)
    fx = Vector{Float64}(undef, n+1)

    density = 20

    plot_y = Vector{Float64}(undef, density*(n + 1))
    plot_x = Vector{Float64}(undef, density*(n + 1))
    plot_inp = Vector{Float64}(undef, density*(n + 1))

    kh = 0.0
    max_nodes = n + 1
    h = (b-a)/n

    for i = 1: max_nodes
        x[i] = a + kh
        y[i] = f(x[i])
        kh += h
    end

    fx = ilorazyRoznicowe(x, y);

    kh = 0.0
    max_nodes *= density
    h = (b - a)/(max_nodes-1)

    for i = 1: max_nodes
        plot_x[i] = a + kh
        plot_inp[i] = warNewton(x, fx, plot_x[i])
        plot_y[i] = f(plot_x[i])
        kh += h
    end

    filename = string("plot_", f, "_", n, ".png")
    clf()
    plot(plot_x, plot_y, label="interpolated", linewidth=2.0, alpha=0.5, color="#0070ff")
    plot(plot_x, plot_inp, label="actual", linewidth=2.0, alpha=0.5, color="#ff7000")
    grid(false)
    legend(loc=2,borderaxespad=0)
    title(string("Interpolation: n = ", n))
    savefig(filename)
    end

    export ilorazyRoznicowe, warNewton, naturalna, rysujNnfx

end  # module
