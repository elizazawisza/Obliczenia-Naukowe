#Eliza Zawisza
#244967

# Function wich computes the f(x) = 0 using bisection method
# f - function f(x)
# a - beginning of the range
# b - end of the range
# delta - given delta to compute f(x) = 0
# epsilon - given epsilon to compute f(x) = 0



function mbisekcji(f, a::Float64, b::Float64, delta::Float64, epsilon::Float64)
    r = Float64(0.0)
    v = Float64(0.0)
    it = 0
    err = 0

    f_a = f(a)
    f_b = f(b)

    if signbit(f_a) == signbit(f_b)
        err = 1
        return (r, v, it, err)
    end

    w = b - a

    while w > epsilon
        it += 1

        w /= 2.0
        r = a + w
        v = f(r)

        if abs(w) < delta || abs(v) < epsilon
            return (r, v, it, err)
        end

        if signbit(v) != signbit(f_a)
            b = r
            f_b = v
        else
            a = r
            f_a = v
        end
    end
end
