#Eliza Zawisza
#244967

# Function wich computes the f(x) = 0 using secant method
# f - function f(x)
# x0, x1 - beginning approximations
# delta - given delta to compute f(x) = 0
# epsilon - given epsilon to compute f(x) = 0
# maxit - maximum amount of iterstions


function msiecznych(f, x0::Float64, x1::Float64, delta::Float64, epsilon::Float64, maxit::Int)
    f_x0 = f(x0)
    f_x1 = f(x1)

    for it in 1:maxit
        if abs(f_x0) > abs(f_x1)
            x0, x1 = x1, x0
            f_x0, f_x1 = f_x1, f_x0
        end

        s = (x1 - x0) / (f_x1 - f_x0)
        x1 = x0
        f_x1 = f_x0
        x0 -= f_x0 * s
        f_x0 = f(x0)

        if abs(x1 - x0) < delta || abs(f_x0) < epsilon
            r = x0
            v = f_x0
            err = 0
            return (r, v, it, err)
        end
    end
    r = x0
    v = f_x0
    err = 1
    return (r, v, it, err)
end
