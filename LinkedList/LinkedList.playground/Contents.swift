import UIKit

var greeting = "Hello, playground"

let dogBreeds = LinkedList<String>()
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "Bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")


let intLinkedList = LinkedList<Int>()
intLinkedList.append(value: 1)

print(intLinkedList)

class Solution {
    
    var middleToTailElements: [Int] = []
    
    func middleNode(_ head: Node<Int>?) -> Node<Int>? {
        guard let head = head else { return nil }
        
        var slow: Node<Int>? = head
        var fast: Node<Int>? = head
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        print("The middle element is ")
        print(slow?.value)
        return slow
    }
}

let solution = Solution()
solution.middleNode(intLinkedList.fist)
