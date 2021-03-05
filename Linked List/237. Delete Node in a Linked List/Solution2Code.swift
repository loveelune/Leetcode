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
        
        var slowPtr = head, fastPtr = head
        while fastPtr?.next != nil {
            fastPtr = fastPtr?.next
            fastPtr = fastPtr?.next
            slowPtr = slowPtr!.next
        }
        return slowPtr
    }
}