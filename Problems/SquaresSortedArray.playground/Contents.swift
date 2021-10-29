import UIKit

/**
 Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.
 */

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var resultArray: [Int] = []
        
        nums.forEach { value in
            let newValue = value * value
            resultArray.append(newValue)
        }
        resultArray.sort()
        
        return resultArray
    }
}

let solution = Solution()
solution.sortedSquares([-4,-1,0,3,10])
