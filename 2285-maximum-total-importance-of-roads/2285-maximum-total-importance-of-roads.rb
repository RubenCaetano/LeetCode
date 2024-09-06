# @param {Integer} n
# @param {Integer[][]} roads
# @return {Integer}
def maximum_importance(n, roads)
    hash_count = Hash.new
    res = 0

    i = roads.length - 1
    while i >= 0
        if hash_count.key?(roads[i][0])
            hash_count[roads[i][0]] += 1
        else
            hash_count[roads[i][0]] = 1
        end

        if hash_count.key?(roads[i][1])
            hash_count[roads[i][1]] += 1
        else
            hash_count[roads[i][1]] = 1
        end

        i -= 1
    end

    sorted_hash = hash_count.sort_by { |key, value| -value }.to_h
    sorted_hash.each do |key, value|
        puts "n: " + n.to_s
        puts "value: " + value.to_s
        res += n * value
        n -= 1
    end

    return res
end