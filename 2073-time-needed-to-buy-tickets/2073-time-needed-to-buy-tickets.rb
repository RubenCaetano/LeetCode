# @param {Integer[]} tickets
# @param {Integer} k
# @return {Integer}
def time_required_to_buy(tickets, k)
    return 0 if tickets.nil? || tickets[k].nil?

    time = 0
    for i in 0..tickets.length - 1
        if i > k
            time += (tickets[i] >= tickets[k] ? tickets[k] - 1 : tickets[i])
        else
            time += (tickets[i] > tickets[k] ? tickets[k] : tickets[i])
        end
    end
    return time
end