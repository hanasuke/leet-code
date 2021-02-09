# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def add_two_numbers(l1, l2)
  head_node = ListNode.new(0)

  current_node = head_node

  curr_l1 = l1 # pointer of current position
  curr_l2 = l2
  carry = 0 # carry over

  while (!curr_l1.nil? || !curr_l2.nil?) do
    l1_val = curr_l1.nil? ? 0 : curr_l1.val
    l2_val = curr_l2.nil? ? 0 : curr_l2.val

    sum = l1_val + l2_val + carry
    if sum >= 10
      carry = 1
      sum = sum % 10
    else
      carry = 0
    end
    answer_list = ListNode.new(sum)
    current_node.next = answer_list

    # update pointer
    curr_l1 = curr_l1&.next
    curr_l2 = curr_l2&.next
    current_node = current_node.next
  end

  if carry != 0
    current_node.next = ListNode.new(carry)
  end

  head_node.next
end
