# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
    return 0 if x < 1
    i = 2
    while true
        return i - 1 if i * i > x
        i += 1
    end
end