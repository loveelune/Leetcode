/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func middleNode(_ head: ListNode?) -> ListNode? {
        if head?.next == nil {
            return head
        }

        var len = 0
        var node = head
        while node != nil {
            len += 1
            node = node!.next
        }

        node = head
        for i in 0 ..< len / 2 {
            node = node!.next
        }
        return node
    }
}
