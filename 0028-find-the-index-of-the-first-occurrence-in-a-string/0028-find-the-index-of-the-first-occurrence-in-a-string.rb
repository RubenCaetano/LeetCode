# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    result = haystack.index(needle)
    return (result.nil? ? -1 : result)
end