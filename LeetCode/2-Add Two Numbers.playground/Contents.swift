/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var ansListNode: ListNode? = nil
        var n1 = l1
        var n2 = l2
        var carry = 0
        
        var lastNode: ListNode? {
            guard var currentNode = ansListNode else { return nil }
            
            while let node = currentNode.next {
                currentNode = node
            }
            
            return currentNode
        }
        
        while n1 != nil || n2 != nil || carry != 0 {
            let n1Val = (n1 != nil) ? n1!.val : 0
            let n2Val = (n2 != nil) ? n2!.val : 0
            let sum = n1Val + n2Val + carry
            let val = sum % 10
            
            if lastNode == nil {
                ansListNode = ListNode(val)
            } else {
                let nextVal = val
                lastNode!.next = ListNode(nextVal)
            }
            
            carry = sum / 10
            
            n1 = n1?.next
            n2 = n2?.next
        }
        
        return ansListNode
    }
}
