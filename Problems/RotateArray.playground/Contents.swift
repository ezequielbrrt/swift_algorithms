import UIKit

/**
 Given an array, rotate the array to the right by k steps, where k is non-negative.
 */


class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        if k < 1 || nums.count == 0 {
            return
        }
        let k = k % nums.count
        print(nums[nums.count - k..<nums.count])
        print(nums[0..<nums.count-k])
        nums = Array(nums[nums.count - k..<nums.count] + nums[0..<nums.count-k])
    }
    
    func rotateOneDigit(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count
        let last = nums.popLast()
        nums.insert(last ?? 0, at: k + 1)
    }
}

let solution = Solution()
var myArray = [1,2,3,4,5,6,7]
// solution.rotate(&myArray, 0)
solution.rotateOneDigit(&myArray, 0)

print(390 % 400)
