# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
    result = 0
    half = (n/2).floor
    n_copy = n
    for i in 0..half
        result += combination(n_copy, i)
        n_copy -= 1
    end
    return result
end

def factorial(n)
    return (1..n).inject(:*) || 1
end

def combination(n, k)
    return factorial(n) / (factorial(k) * factorial(n-k))
end