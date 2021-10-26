/**
 Binary Tree implementation
 */
import Foundation

public class Node<T> {
    public var value: T?
    public var leftNode: Node?
    public var rightNode: Node?
    
    public init() {}
    
    public init(value: T?, leftNode: Node?, rightNode: Node?) {
        self.value = value
        self.leftNode = leftNode
        self.rightNode = rightNode
    }
}
