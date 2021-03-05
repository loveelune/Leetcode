## Analysis
Similar to calculate the sum of all list node's value, but in a binary world.

## Solution 1: Bit Manipulation
Based on the description, every node is like a bit of a binary number. Then bit manipulation is a visually straightforward solution. 
Traverse the list, for every node `n`, shift current `res` 1 bit to the left and then bitwise or with `n.val` to get the new `res`.

## Solution 2: Convert Binary to Decimal
The same as solution 1, but convert the node value to decimal and add up and get the result instead of play withing bit shift. 
Traverse the list, for every node `n`, times current `res` by 2 and then add `n.val` to get the new `res`
