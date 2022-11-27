public struct Queue<Element> {
    fileprivate var array: [Element?] = []
    fileprivate var head: Int = 0
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(_ element: Element) {
        array.append(element)
    }
    
    @discardableResult
    public mutating func dequeue() -> Element? {
        guard let element = array[guarded: head] else {
            return nil
        }
        
        array[head] = nil
        head += 1
        
        let percentage = Double(head) / Double(array.count)
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        
        return element
    }
    
    var front: Element? {
        guard !isEmpty else {
            return nil
        }
        
        return array[head]
    }
}
