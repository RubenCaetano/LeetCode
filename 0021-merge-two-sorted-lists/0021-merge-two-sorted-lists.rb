# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}
def merge_two_lists(list1, list2)
    return list2 if list1.nil?
    return list1 if list2.nil?

    array = []
    while !list1.nil? || !list2.nil?
        if list1.nil?
            array << list2
            join_linked_list!(array)
            #print_linked_list(array[0])
            return array[0]
        end

        if list2.nil?
            array << list1
            join_linked_list!(array)
            #print_linked_list(array[0])
            return array[0]
        end

        if list1.val > list2.val
            array << ListNode.new(list2.val)
            list2 = list2.next
        else
            array << ListNode.new(list1.val)
            list1 = list1.next
        end
    end
    join_linked_list!(array)
    #print_linked_list(array[0])
    return array[0]
end

def print_linked_list(list)
    print "["
    while !list.nil?
        print list.val.to_s + (list.next.nil? ? "" : ", ")
        list = list.next
    end
    print "]"
end

def join_linked_list!(array)
    for i in 0..array.length - 1
        next if i + 1 > array.length - 1
        array[i].next = array[i + 1]
    end
end