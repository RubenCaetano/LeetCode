# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
    seen = {}
    index_to_remove = []

    nums.each_with_index do |num, index|
        if seen[num]
        index_to_remove << index
        else
        seen[num] = true
        end
    end
    
    index_to_remove.reverse_each { |index| nums.delete_at(index) }
    return nums.length
end