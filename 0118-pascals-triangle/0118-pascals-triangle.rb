# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
    res = []
    for i in 0..num_rows - 1 do
        if i == 0
            res << [1] 
            next
        end
        aux = []
        for j in 0..i do
            #puts "i: " + i.to_s
            #puts "j: " + j.to_s
            #puts "res[i-1][j-1]: " + res[i-1][j-1].to_s
            #puts "res[i-1][j]: " + res[i-1][j].to_s
            sum = (j-1 == -1 ? 0 : res[i-1][j-1].to_i) + res[i-1][j].to_i
            aux << sum
        end
        res << aux
        #puts "RES:"
        #puts res.to_s
        #puts "---------------------"
    end
    return res
end