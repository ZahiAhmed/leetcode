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
    sorted = []

    while list1 && list2
        if list1.val < list2.val
            sorted << list1.val
            list1 = list1.next
        else
            sorted << list2.val
            list2 = list2.next
        end
    end

    while list1
        sorted << list1.val
        list1 = list1.next
    end

    while list2
        sorted << list2.val
        list2 = list2.next
    end

    sorted
end