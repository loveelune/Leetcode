## Analysis
Implement a hash map using array.

## Solution 1: 1D Array
Since in this problem, the key and value are in the range of `[0, 1000000]`, we just need an `Int` array of size 1000000, where all values are initiated as -1 (*Not Found*).

This turns all hash map operations to array operation using index.

## Solution 2: Array + Linked List
In the real world, the key and value's range could be wider, which means we
1. cannot simply create an array of Ints to save all values since it will go beyond array's max size
2.  cannot initiate the array with -1 since it will have conflicts with values saved in hash map.

A more generic solution is to use an array of linked lists. 
1. When you want to insert a key/value pair, you need to use hash function (usually we use `key / prime number` as simple hash function) to map the key to array's index, this could effectively reduce the array's size. 
2. Linked list is used to handle hash collisions. Every time a collision happens, need to append a new node with value to the linked list at `array[key / prime]`.