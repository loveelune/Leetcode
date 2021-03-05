## Solution 1: Output to Array
Traverse the list, put every node into an array `A`. Then `A[A.count / 2]` is the middle node.

**Pros:** It's a brute force solution, straightforward
**Cons:** Need extra O(n) space
**In place solution: ** Traverse the list first time to get the length `len`. Then in second time, traverse `len/2` nodes to find the middle node. It improves the space needed but still slow. 

## Solution 2: Fast and Slow Pointer
Create 2 pointers `slow` and `fast` to traverse the list, where `fast` pointer traverses twice as fast as `slow` pointer does. Then when `fast` pointer reaches the end of the list, `slow` pointer is the middle node. 
