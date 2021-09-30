import UIKit

print("hola")

var node = Node<Int>(value: 4,
                     leftNode: Node<Int>(value: 5,
                                         leftNode: nil,
                                         rightNode: Node(value: 2,
                                                         leftNode: nil,
                                                         rightNode: nil)),
                     rightNode: Node<Int>(value: 3,
                                          leftNode: nil,
                                          rightNode: nil))
