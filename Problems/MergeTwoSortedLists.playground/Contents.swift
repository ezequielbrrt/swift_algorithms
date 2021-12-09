import UIKit

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        guard let l1 = l1, let l2 = l2 else { return nil }
        
        let newHead: ListNode? = l1
        var currentValue = newHead
        let nextL1 = l1
        let nextL2 = l2
        
        while nextL1.next != nil && nextL2.next != nil {
            
            if nextL1.val <= nextL2.val  {
                currentValue.next = nextL1
                nextL1.next = nextL2
                printHead(head: currentValue)
                print("-")
            } else {
                currentValue.next = nextL2
                currentValue.next?.next = nextL1
            }
            
            nextL1.next = nextL1.next?.next
            nextL2.next = nextL2.next?.next
        }
        
        return newHead
    }
    
    func printHead(head: ListNode?) {
        var aux = head
        while aux != nil {
            print(aux?.val)
            
            aux = aux?.next
        }

    }
}

let list1 = ListNode(1, ListNode(2, ListNode(4, nil)))
let list2 = ListNode(1, ListNode(3, ListNode(4, nil)))

let solution = Solution()
let varSolution = solution.mergeTwoLists(list1, list2)
print("finish")
solution.printHead(head: varSolution)
