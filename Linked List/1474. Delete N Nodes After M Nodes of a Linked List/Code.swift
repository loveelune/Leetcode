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
    func deleteNodes(_ head: ListNode?, _ m: Int, _ n: Int) -> ListNode? {
        if head == nil || m == 0 {
            return nil
        }
        
        var prevNode: ListNode? = nil, currNode = head
        while currNode != nil {
            var mNodesCnt = m, nNodesCnt = n
            // Keep m nodes
            while currNode != nil && mNodesCnt > 0 {
                prevNode = currNode
                currNode = currNode!.next
                mNodesCnt -= 1
            }
            
            // Early return if already traverse through the list
            if currNode == nil {
                break
            }
            
            // Delete n nodes
            while currNode != nil && nNodesCnt > 0 {
                currNode = currNode!.next
                nNodesCnt -= 1
            }
            prevNode!.next = currNode
        }
        
        return head
    }
}