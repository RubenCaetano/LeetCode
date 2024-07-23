# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    digits.to_enum.with_index.reverse_each do |val, index|
        if val == 9
            digits[index] = 0
        else
            digits[index] = val + 1
            return digits
        end
    end
    digits.insert(0, 1)
    return digits
end