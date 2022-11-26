public struct Queue<Element> {
    fileprivate var array: [Element] = []
    
    public var count: Int {
        return array.count
    }
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public mutating func enqueue(_ element: Element) {
        array.append(element)
    }
    
    public mutating func dequeue() -> Element? {
        guard !isEmpty else { return nil }
        
        return array.removeFirst()
    }
    
    public var front: Element? {
        return array.first
    }
}

extension Queue: Sequence {
    public func makeIterator() -> AnyIterator<Element> {
        var curr: Queue<Element> = self
        return AnyIterator {
            curr.dequeue()
        }
    }
}
