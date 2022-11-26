struct Stack<Element> {
    // 요소를 저장하기 위한 배열
    fileprivate var array: [Element] = []
    
    // 배열이 비어있으면 true, 비어있지 않다면 false를 반환
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    // 배열에 삽입된 요소의 개수를 반환
    public var count: Int {
        return array.count
    }
    
    /**
     * 배열의 맨 뒤에 요소를 삽입
     * 시간 복잡도: O(1)
     */
    public mutating func push(_ element: Element) {
        array.append(element)
    }
    
    /**
     * 배열의 맨 뒤의 요소를 삭제
     * 시간 복잡도: O(1)
     */
    @discardableResult
    public mutating func pop() -> Element? {
        return array.popLast()
    }
    
    /**
     * 배열의 맨 뒤의 요소를 반환
     * 시간 복잡도: O(1)
     */
    public var top: Element? {
        return array.last
    }
}

// 반복자를 반환하기 위한 확장
extension Stack: Sequence {
    public func makeIterator() -> AnyIterator<Element> {
        var curr: Stack<Element> = self
        return AnyIterator {
            curr.pop()
        }
    }
}
