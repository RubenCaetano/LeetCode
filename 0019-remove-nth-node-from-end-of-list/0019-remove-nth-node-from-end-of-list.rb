# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @param {Integer} n
# @return {ListNode}
def remove_nth_from_end(head, n)
    return nil if head.next.nil?
    res = []
    while !head.nil?
        res << head
        head = head.next
    end

    if n == 1
        res[-n - 1].next = nil
    elsif n == res.length
        return res[1]
    else
        res[-n - 1].next = res[-n + 1]
    end

    return res[0]
end