# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    n = prices.length - 1
    res = 0
    aux = prices[0]

    for i in 0..n
        aux = prices[i] if prices[i] < aux
        res = prices[i] - aux if res < prices[i] - aux 
    end
    return res
end