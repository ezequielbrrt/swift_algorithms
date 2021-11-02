import UIKit

/*
 Given an integer array nums, move all 0's to the end of it while maintaining the relative order of the non-zero elements.

 Note that you must do this in-place without making a copy of the array.
 */

class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var stopWhile = false
        
        var numberOfZeros = 0
        
        while !stopWhile {
            if let index = nums.firstIndex(where: { $0 == 0 }) {
                numberOfZeros = numberOfZeros + 1
                nums.remove(at: index)
            } else {
                stopWhile = true
            }
        }
        
        
        for _ in 0 ..< numberOfZeros {
            nums.append(0)
        }
    }
}

let solution = Solution()
var array = [0,1,0,3,12]

solution.moveZeroes(&array)
print(array)
