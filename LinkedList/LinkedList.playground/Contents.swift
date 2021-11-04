import UIKit

var greeting = "Hello, playground"

let dogBreeds = LinkedList<String>()
dogBreeds.append(value: "Labrador")
dogBreeds.append(value: "Bulldog")
dogBreeds.append(value: "Beagle")
dogBreeds.append(value: "Husky")


let intLinkedList = LinkedList<Int>()
intLinkedList.append(value: 1)
intLinkedList.append(value: 2)
intLinkedList.append(value: 3)
//intLinkedList.append(value: 4)
//intLinkedList.append(value: 5)


class Solution {
    
    func middleNode(_ head: Node<Int>?) -> Node<Int>? {
        guard let head = head else { return nil }
        
        var slow: Node<Int>? = head
        var fast: Node<Int>? = head
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
    
    func removeNthFromEnd(_ head: Node<Int>?, _ n: Int) -> Node<Int>? {
        
        guard let _ = head else { return nil }
        
        var auxNode = head
        var total = 1
            
        while auxNode?.next != nil {
            total += 1
            auxNode = auxNode?.next
        }
        
        let nthFromEnd = total - n
        
        if total == 1 && nthFromEnd == 0 {
            return nil
        }
        
        if nthFromEnd == 0 {
            auxNode = head
            auxNode = head?.next
            return auxNode
        }
        
        var index = (nthFromEnd == 0) ? 0 : 1
        var nodeBehindToRemove = head
        
        while index != nthFromEnd {
            index += 1
            nodeBehindToRemove = nodeBehindToRemove?.next
        }
        
        nodeBehindToRemove?.next = nodeBehindToRemove?.next?.next
        
        return head
    }
}

let solution = Solution()
// solution.middleNode(intLinkedList.fist)
solution.removeNthFromEnd(intLinkedList.fist, 3)
