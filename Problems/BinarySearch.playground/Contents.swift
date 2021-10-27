import UIKit

/**
 - Problem:
 Given an array of integers nums which is sorted in ascending order, and an integer target, write a function to search target in nums. If target exists, then return its index. Otherwise, return -1.

 You must write an algorithm with O(log n) runtime complexity.

 */

class Solution {
    
    
    func search(_ nums: [Int], _ target: Int) -> Int {
        
        // base case for one item in array
        if nums.count == 1 {
            return nums.firstIndex(of: target) ?? -1
        }
        
        // use ArraySlice only for transient computation
        let leftSplit: ArraySlice<Int> = nums[0 ..< nums.count / 2]
        let rightSplit: ArraySlice<Int> = nums[nums.count / 2 ..< nums.count]
        
        // make arrays from ArraySlice
        let leftDeck: [Int] = Array(leftSplit)
        let rightDeck: [Int] = Array(rightSplit)
        
        // get first last digit of left deck and first digit of right deck
        guard let leftDeckLastDigit = leftDeck.last,
              let rightDeckFirstDigit = rightDeck.first else {
            return 0
        }

        // compare target
        if target <= leftDeckLastDigit {
            return leftDeck.firstIndex { $0 == target } ?? -1
        }
        
        if target >= rightDeckFirstDigit {
            // here we have to add a extra sum to count left indexes
            guard let index = (rightDeck.firstIndex { $0 == target }) else { return -1 }
            return leftDeck.count + index
        }
        
        return 0
    }
}

let solution = Solution()
print(solution.search([5], -5))


