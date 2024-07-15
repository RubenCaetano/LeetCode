# @param {String[]} strs
# @return {String}
def longest_common_prefix(strs)
    save_prefix = ""
    for i in 0..strs[0].length - 1 do
        prefix = strs[0][0..i]
        return save_prefix if strs.length != strs.count { |word| word.start_with?(prefix) }
        save_prefix = prefix
    end
    return save_prefix
end