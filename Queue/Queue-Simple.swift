public struct Queue<T> {
    fileprivate var array: [T] = []
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    @discardableResult
    public mutating func dequeue() -> T? {
        guard !isEmpty else { return nil }
        
        return array.removeFirst()
    }
    
    public var front: T? {
        return array.first
    }
}

extension Queue: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        var curr: Queue<T> = self
        return AnyIterator {
            curr.dequeue()
        }
    }
}
