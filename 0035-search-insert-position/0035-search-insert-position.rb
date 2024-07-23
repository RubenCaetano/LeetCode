# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    last_index = 0
    nums.each_with_index do |val, index|
        return index if val >= target
        last_index = index
    end
    return last_index + 1
end