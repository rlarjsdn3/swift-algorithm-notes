//
// Created by 김건우 on 2022/11/19.
//

import Foundation

// 리스트 노드 구조를 정의한 클래스
class Node<Element> {
    var data: Element // 데이터를 저장하는 변수
    var next: Node<Element>? // 다음 리스트를 가리키는 변수
    
    init(_ data: Element, next: Node<Element>? = nil) {
        self.data = data
        self.next = next
    }
}

class LinkedQueue<Element> {
    private var head: Node<Element>? // 리스트의 처음 요소를 가리키는 변수
    private var tail: Node<Element>? // 리스트의 마지막 요소를 가리키는 변수
    
    // 리스트가 비어 있으면 true, 비어 있지 않으면 false 반환
    public var isEmpty: Bool {
        return head == nil && tail == nil
    }
    
    // 리스트의 맨 뒤에 요소 삽입
    // 시간 복잡도: O(1)
    public func enqueue(_ element: Element) {
        let newNode: Node<Element> = Node(element, next: nil)
        
        if isEmpty {
            head = newNode
        } else {
            tail?.next = newNode
        }
        
        tail = newNode
    }
    
    // 리스트의 맨 앞의 요소 반환
    // 시간 복잡도: O(1)
    @discardableResult
    public func dequeue() -> Element? {
        guard !isEmpty else {
            return nil
        }
        
        let removed: Element? = head?.data
        head = head?.next
        if head == nil {
            tail = nil
        }
        
        return removed
    }
    
    // 서브스크립트 추가 예정
}

extension LinkedQueue: CustomStringConvertible {
    public var description: String {
        var text: String = "["
        var node: Node<Element>? = head

        while node != nil {
            text += "\(node!.data)"
            node = node?.next
            if node != nil { text += ", " }
        }

        return text + "]"
    }
}


// 2022. 11. 22 업데이트
// - CustomStringConvertible 프로토콜을 준수하는 LinkedQueue 확장 추가
