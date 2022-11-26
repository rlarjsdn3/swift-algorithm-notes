public struct Stack<Element> {
    fileprivate var array: [Element] = []
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }

    public mutating func push(_ element: Element) {
        array.append(element)
    }

    @discardableResult
    public mutating func pop() -> Element? {
        return array.popLast()
    }

    public var top: Element? {
        return array.last
    }
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<Element> {
        var curr: Stack<Element> = self
        return AnyIterator {
            curr.pop()
        }
    }
}
