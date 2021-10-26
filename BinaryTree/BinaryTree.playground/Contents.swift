import UIKit


var node = Node<Int>(value: 4,
                     leftNode: Node<Int>(value: 5,
                                         leftNode: nil,
                                         rightNode: Node(value: 2,
                                                         leftNode: nil,
                                                         rightNode: nil)),
                     rightNode: Node<Int>(value: 3,
                                          leftNode: nil,
                                          rightNode: nil))


func seeAllTree(node: Node<Int>?, depth: Int = 0) {
    // Base case -> node = nil
    guard let node = node else { return }

    seeAllTree(node: node.leftNode, depth: depth + 1)
    print(node.value)
    seeAllTree(node: node.rightNode, depth: depth + 1)
    
}

seeAllTree(node: node)

func timeConversion(s: String) -> String {
    var result: Int = 0
    
    let timeArray = s.split(separator: ":")
    guard let hoursString = timeArray.first,
        let hours = Int(hoursString)
     else {
        fatalError()
    }
    
    var resultString = ""
       if s.contains("AM") {
           result = 12 - hours
           resultString = (result < 10 ) ? "0\(result)" : "\(result)"
       } else {
           result = 12 + hours
           resultString = "\(result)"
       }
       
       return "\(resultString):\(timeArray[1]):\(timeArray[2].prefix(2))"
}

print(timeConversion(s: "12:40:22AM"))

