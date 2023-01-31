public struct Deque<T> {
    private var array: [T?] // 요소를 저장할 배열
    private var head: Int // deque() 대상 요소를 가리키는 포인터
    private var capacity: Int // nil 값이 얼마인지 (가변)
    private var originalCapacity: Int // 원래 nil 값이 얼마인지 (고정)
    
    public init(_ capacity: Int = 10) {
        self.capacity = capacity
        originalCapacity = self.capacity
        array = [T?](repeating: nil, count: capacity)
        head = capacity
    }
    
    public var isEmpty: Bool {
        return count == 0
    }
    
    public var count: Int {
        return array.count - head
    }
    
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    
    public mutating func enqueueFront(_ element: T) {
        // 배열에 요소를 앞에서 집어넣을 공간이 더 없는 경우
        if head == 0 {
            capacity *= 2
            let emptyArray: [T?] = [T?](repeating: nil, count: capacity)
            array.insert(contentsOf: emptyArray, at: 0)
            head = capacity
        }
        
        head -= 1
        array[head] = element
    }
    
    public mutating func dequeue() -> T? {
        guard head < array.count, let element: T = array[head] else {
            return nil
        }
        
        array[head] = nil
        head += 1
        
        // 배열 앞에 공간이 너무 많이 남는 경우
        if capacity >= originalCapacity && head >= capacity*2 {
            let amount: Int = capacity + capacity/2
            array.removeFirst(amount)
            head -= amount
            capacity /= 2
        }
        return element
    }
    
    public mutating func dequeueBack() -> T? {
        guard !isEmpty else { return nil }
        
        return array.removeLast()
    }
    
    public func peekFront() -> T? {
        guard !isEmpty else { return nil }
        
        return array[head]
    }
    
    public func peekBack() -> T? {
        guard !isEmpty else { return nil }
        
        return array.last!
    }
}
