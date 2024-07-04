# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
    number_to_save = 0
    res = []
    while !l1.nil? || !l2.nil?
        result = ((l1.nil? || l1.val.nil? ? 0 : l1.val) + (l2.nil? || l2.val.nil? ? 0 : l2.val)  + number_to_save).to_s
        number_to_put = result[-1].to_i
        number_to_save = (result.to_i >= 10 ? result[0].to_i : 0)
        add_node(number_to_put, res)
        l1 = l1.next if !l1.nil?
        l2 = l2.next if !l2.nil?
    end

    add_node(number_to_save, res) if number_to_save != 0

    return res[0]
end

def add_node(number_to_put, res)
    new_node = ListNode.new(number_to_put)
    res << new_node
    res[-2].next = new_node if res.length > 1
end
