# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
    x_str = x.to_s
    return true if x_str.length == 1
    index = (x_str.length / 2).floor
    first_half = x_str.slice(0..index - 1)
    index = index + 1 if x_str.length % 2 != 0
    second_half = x_str.slice(index..-1).reverse
    return first_half == second_half
end