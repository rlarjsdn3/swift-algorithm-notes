public final class LinkedList<T> {
    
    // Linked List's Node Class Declaration
    public class LinkedListNode<T> {
        var value: T
        var next: LinkedListNode?
        weak var previous: LinkedListNode?
        
        public init(value: T) {
            self.value = value
        }
    }
    
    public typealias Node = LinkedList<T>.LinkedListNode<T>
    
    private(set) var head: Node?
    
    public var last: Node? {
        guard var node: Node = head else {
            return nil
        }
        
        while let next: Node = node.next {
            node = next
        }
        return node
    }
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var count: Int {
        guard var node: Node = head else {
            return 0
        }
        
        var count: Int = 1
        while let next: Node = node.next {
            node = next
        }
        return count
    }
    
    public init() { }
    
    public subscript(index: Int) -> T {
        let node = self.node(at: index)
        return node.value
    }
    
    public func node(at index: Int) -> Node {
        assert(head != nil, "List is empty")
        assert(index >= 0, "Index must be greater or eqal to 0")
        
        if index == 0 {
            return head!
        } else {
            var node: Node? = head?.next
            for _ in 1..<index {
                node = node?.next
                if node == nil {
                    break
                }
            }
            
            assert(node != nil, "Index is out of bounds")
            return node!
        }
    }
    
    public func append(_ value: T) {
        let newNode: Node = Node(value: value)
        append(newNode)
    }
    
    public func append(_ node: Node) {
        let newNode: Node = node
        if let lastNode = last {
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }
    
    public func append(_ list: LinkedList) {
        var nodeToCopy: Node? = list.head
        while let node: Node = nodeToCopy {
            append(node.value)
            nodeToCopy = node.next
        }
    }
    
    public func insert(_ value: T, at index: Int) {
        let newNode: Node = Node(value: value)
        insert(newNode, at: index)
    }
    
    public func insert(_ newNode: Node, at index: Int) {
        if index == 0 {
            newNode.next = head
            head?.previous = newNode
            head = newNode
        } else {
            let prev: Node = node(at: index - 1)
            let next: Node? = prev.next
            
            newNode.previous = prev
            newNode.next = next
            next?.previous = newNode
            prev.next = newNode
        }
    }
    
    public func insert(_ list: LinkedList, at index: Int) {
        guard !list.isEmpty else { return }
        
        if index == 0 {
            list.last?.next = head
            head = list.head
        } else {
            let prev: Node = node(at: index - 1)
            let next: Node? = prev.next
            
            prev.next = list.head
            list.head?.previous = prev
            list.last?.next = next
            next?.previous = list.last
        }
    }
    
    public func removeAll() {
        head = nil
    }
    
    @discardableResult public func remove(node: Node) -> T {
        let prev: Node? = node.previous
        let next: Node? = node.next
        
        if let prev = prev {
            prev.next = next
        } else {
            head = next
        }
        next?.previous = prev
        
        node.previous = nil
        node.next = nil
        return node.value
    }
    
    @discardableResult public func removeLast() -> T {
        assert(!isEmpty)
        return remove(node: last!)
    }
    
    @discardableResult public func remove(at index: Int) -> T {
        let node: Node = node(at: index)
        return remove(node: node)
    }
}

extension LinkedList: CustomStringConvertible {
    public var description: String {
        var text: String = "["
        var node: Node? = head
        while let nd: Node = node {
            text += "\(nd.value)"
            node = nd.next
            if node != nil { text += ", " }
        }
        return text + "]"
    }
}

extension LinkedList {
    public func reverse() {
        var node: Node? = head
        while let currentNode: Node = node {
            node = currentNode.next
            // ...
        }
    }
}
