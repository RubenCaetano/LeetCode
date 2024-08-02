# @param {Integer} row_index
# @return {Integer[]}
def get_row(row_index)
    res = []
    for i in 0..row_index
        if i == 0
            res << [1]
            next
        end
        aux = []
        for j in 0..i
            sum = (j-1 == -1 ? 0 : res[i-1][j-1].to_i) + res[i-1][j].to_i
            aux << sum
        end
        res << aux
    end
    return res[row_index]
end