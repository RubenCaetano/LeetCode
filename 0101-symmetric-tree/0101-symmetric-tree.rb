# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)
    return is_same_tree(root.left, root.right)
end

def is_same_tree(p, q)
    is_same = true

    return true if p.nil? && q.nil?
    return false if p.nil? || q.nil?
    return false if p.val != q.val

    is_same = is_same && is_same_tree(p.left, q.right)
    is_same = is_same && is_same_tree(p.right, q.left)

    return is_same
end