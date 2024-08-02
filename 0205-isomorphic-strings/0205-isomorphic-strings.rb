# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    return false if s.length != t.length
    dic = []
    dic[0] = []
    dic[1] = []
    j = 0
    for i in 0..s.length-1 do
        index_in_s = dic[0].index(s[i])
        index_in_t = dic[1].index(t[i])

        # it's false whenever only one of the two letter is encounter in the saved array
        return false if (index_in_s.nil? || index_in_t.nil?) && !(index_in_s.nil? && index_in_t.nil?)
        # it's false when both letters are encounter in the list but the index is different
        return false if !index_in_s.nil? && !index_in_t.nil? && index_in_s != index_in_t

        # if both letter's are in the list is not necessary to save them
        next if !index_in_s.nil? && !index_in_t.nil?

        dic[0][j] = s[i]
        dic[1][j] = t[i]
        j += 1
    end
    return true
end