# @param {String} s
# @return {Integer}
def max_depth(s)
    return 0 if s.nil?
    count = 0
    save = 0
    for i in 0..s.length - 1
        if s[i] == "("
            count += 1
            save = count if count > save
        end

        count -= 1 if s[i] == ")"
    end

    return save
end