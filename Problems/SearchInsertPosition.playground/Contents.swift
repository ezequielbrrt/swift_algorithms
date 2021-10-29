import UIKit

/**
 Given a sorted array of distinct integers and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

 You must write an algorithm with O(log n) runtime complexity.
 */

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int, _ left: Int, _ right: Int) -> Int {
           if left > right {
               return right + 1
           }
           
           let mid = (left + right) / 2
           if nums[mid] == target {
               return mid
           } else if nums[mid] > target {
               return searchInsert(nums, target, left, mid - 1)
           }
           return searchInsert(nums, target, mid + 1, right)
       }
    
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        return searchInsert(nums, target, 0, nums.count - 1)
    }
}

let solution = Solution()
solution.searchInsert([1,3], 1)
