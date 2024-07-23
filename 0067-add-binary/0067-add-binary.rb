# @param {String} a
# @param {String} b
# @return {String}
def add_binary(a, b)
    res = ""
    aux = 0
    i = (a.length > b.length ? a.length : b.length) - 1

    while i >= 0
        sum_all = (a.nil? ? 0 : a[-1].to_i) + (b.nil? ? 0 : b[-1].to_i) + aux

        if sum_all == 0 || sum_all == 2
            aux = 1 if sum_all != 0
            res.insert(0, "0")
        else
            aux = 0 if sum_all != 3
            res.insert(0, "1")
        end

        a = a.chop
        b = b.chop
        
        i -= 1
    end

    res.insert(0, "1") if aux == 1

    return res
end