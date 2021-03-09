
class MyHashMap {
    private var arr: [Int]

    /** Initialize your data structure here. */
    init() {
        arr = Array(repeating: -1, count: 1000000)
    }

    /** value will always be non-negative. */
    func put(_ key: Int, _ value: Int) {
        arr[key] = value
    }
    
    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
    func get(_ key: Int) -> Int {
        return arr[key]
    }
    
    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
    func remove(_ key: Int) {
        arr[key] = -1
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */