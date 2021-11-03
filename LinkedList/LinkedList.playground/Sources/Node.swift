import Foundation

public class Node<T> {
    public var value: T
    public var next: Node<T>?
    
    // weak avoid cycles references
    weak var previous: Node?
    
    init(value: T, next: Node?) {
        self.value = value
        self.next = next
    }
}

public class LinkedList<T> {
    public init () {}
    
    fileprivate var head: Node<T>?
    private var tail: Node<T>?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var fist: Node<T>? {
        return head
    }
    
    public var last: Node<T>? {
        return tail
    }
    
    public func append(value: T) {
        let newNode = Node(value: value, next: nil)
        
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        }
        else {
            head = newNode
        }

        tail = newNode
    }
}

extension LinkedList: CustomStringConvertible {
  // 2
  public var description: String {
    // 3
    var text = "["
    var node = head
    // 4
    while node != nil {
      text += "\(node!.value)"
      node = node!.next
      if node != nil { text += ", " }
    }
    // 5
    return text + "]"
  }
}
