# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    hash = Hash.new(0)
    nums.each do |num|
        hash[num] += 1
    end
    return hash.key(1)
end