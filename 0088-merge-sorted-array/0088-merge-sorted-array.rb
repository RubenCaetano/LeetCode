# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
    return nums1 if n == 0
    
    i = 0
    count = 0

    while i < m + n

        if nums2.length != 0 && nums1[i] > nums2[0]
            nums1.insert(i, nums2[0])
            nums1.delete_at(-1)
            nums2.delete_at(0)
            i += 1
            next
        end

        if (count >= m)
            nums1[i] = nums2[0]
            nums2.delete_at(0)
        end
        
        count += 1 
        i += 1
    end

    return nums1
end