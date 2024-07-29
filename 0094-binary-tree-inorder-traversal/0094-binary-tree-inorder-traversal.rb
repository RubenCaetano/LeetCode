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
# @return {Integer[]}
def inorder_traversal(root)
    res = []

    inorder(root, res)

    return res
end

def inorder(root, res)
    return if root.nil?
    inorder(root.left, res)
    res << root.val
    inorder(root.right, res)
end