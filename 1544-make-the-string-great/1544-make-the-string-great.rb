# @param {String} s
# @return {String}
def make_good(s)
    remove_pairs(s)
end

def remove_pairs(s)
    aux = s[0]
    for i in 1..s.length-1
        if aux.upcase == s[i].upcase && ((is_upper(aux) && is_lower(s[i])) || (is_upper(s[i]) && is_lower(aux)))
            s[i] = ""
            s[i - 1] = ""
            s = remove_pairs(s)
            break
        end

        aux = s[i]
    end

    return s
end

def is_upper(letter)
    letter == letter.upcase
end

def is_lower(letter)
    letter == letter.downcase
end