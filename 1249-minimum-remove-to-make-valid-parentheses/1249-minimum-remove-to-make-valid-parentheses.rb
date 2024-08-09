# @param {String} s
# @return {String}
def min_remove_to_make_valid(s)
    count_p = 0
    array_index_p = []
    n = s.length - 1
    i = 0
    while i <= n
        if s[i] == "("
            count_p += 1 
            array_index_p << i
        end
        count_p -= 1 if s[i] == ")"
        if count_p < 0
            count_p = 0
            s[i] = ""
            i -= 1
        end
        i += 1
    end

    if count_p > 0
        n = array_index_p.length - 1
        i = n - count_p
        while n > i
            s[array_index_p[n]] = ""
            n -= 1
        end
    end

    return s
end