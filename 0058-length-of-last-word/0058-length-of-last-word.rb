# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    s = s.strip
    start_index = s.rindex(" ")
    return s.length if !start_index
    word = s.slice(start_index + 1..-1)
    return word.length
end