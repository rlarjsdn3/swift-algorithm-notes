public struct Stack<T> {
    fileprivate var array: [T] = []
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }

    public mutating func push(_ element: T) {
        array.append(element)
    }

    @discardableResult
    public mutating func pop() -> T? {
        return array.popLast()
    }

    public var top: T? {
        return array.last
    }
}

extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<T> {
        var curr: Stack<T> = self
        return AnyIterator {
            curr.pop()
        }
    }
}
