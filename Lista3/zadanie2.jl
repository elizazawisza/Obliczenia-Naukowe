#Eliza Zawisza
#244967

# Function wich computes the f(x) = 0 using tangent method
# f - function f(x)
# pf - derivative of f(x)
# x0 - beginning approximation
# delta - given delta to compute f(x) = 0
# epsilon - given epsilon to compute f(x) = 0

function mstycznych(f,pf,x0::Float64, delta::Float64, epsilon::Float64, maxit::Int)
    r = Float64(0.0)
    v = Float64(0.0)
    it = 0
    err = 0
    r = x0
    v = f(r)

    if abs(pf(r)) < epsilon
        err = 2
        return (r, v, it, err)
    end

    if abs(v) < epsilon
        err = 0
        return (r, v, it, err)
    end

    for it in 1:maxit
        x1 = r - v / pf(r)
        v = f(x1)
        if abs(x1 - r) < delta || abs(v) < epsilon
            r = x1
            return (r, v, it, err)
        end
        r = x1
    end

    err=1
    return (r, v, it, err)
end
