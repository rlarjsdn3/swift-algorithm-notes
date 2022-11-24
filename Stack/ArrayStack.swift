struct Stack<Element> {
    // 요소를 저장할 배열
    private var items: [Element] = []
    
    // 배열에 삽입된 요소의 개수를 반환
    public var count: Int {
        return items.count
    }
    
    // 배열이 비어있으면 true, 비어있지 않다면 false를 반환
    public var isEmpty: Bool {
        return items.isEmpty
    }
    
    // 시간 복잡도: O(1)
    // 배열의 맨 뒤에 요소 삽입
    public mutating func push(_ element: Element) {
        items.append(element)
    }
    
    // 시간 복잡도: O(1)
    // 배열의 맨 뒤의 요소 삭제
    @discardableResult
    public mutating func pop() -> Element? {
        guard !isEmpty else {
            return nil
        }
        
        return items.removeLast()
    }
    
    // 시간 복잡도: O(1)
    // 배열의 맨 뒤의 요소 반환
    public func peek() -> Element? {
        guard !isEmpty else {
            return nil
        }
        
        return items.last
    }
}

// 배열 요소를 출력하기 위한 확장
extension Stack: CustomStringConvertible {
    var description: String {
        var text: String = "["
        for (i, e) in items.enumerated() {
            text += String(describing: e)
            if i != items.count-1 { text += ", " }
        }
        
        return text + "]"
    }
}
