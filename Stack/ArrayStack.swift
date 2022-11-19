struct Stack<Element> {
    // 요소를 저장할 배열
    private var items: [Element] = []
    
    // 스택이 비어있으면 true, 비어있지 않다면 false를 반환
    public var isEmpty: Bool {
        return items.isEmpty
    }
    
    // 스택의 맨 뒤에 요소 삽입
    public mutating func push(_ element: Element) {
        items.append(element)
    }
    
    // 스택의 맨 뒤의 요소 삭제
    public mutating func pop() -> Element? {
        guard !isEmpty else {
            return nil
        }
        
        return items.removeLast()
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        return items.description
    }
}
