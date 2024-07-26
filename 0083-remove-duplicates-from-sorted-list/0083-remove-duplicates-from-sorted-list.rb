# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    saved_head = head
    while !head.nil?
        if !head.next.nil? && head.val == head.next.val
            head.next = head.next.next
            next
        end
        head = head.next
    end
    return saved_head
end