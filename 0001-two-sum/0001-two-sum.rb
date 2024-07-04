# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}

def two_sum(nums, target)
    num = nums.delete_at(0)
    j = 0
    index_difference = nums.index(target - num)
    
    while !index_difference
        j = j + 1
        num = nums.delete_at(0)
        index_difference = nums.index(target - num)
        return [j, index_difference + j + 1] if index_difference
    end

    return [j, index_difference + j + 1]
end