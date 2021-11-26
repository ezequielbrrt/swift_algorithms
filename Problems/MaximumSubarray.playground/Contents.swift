import UIKit

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxValue = nums[0]
        var preValue = nums[0]
        
        for i in 1..<nums.count {
            let value = nums[i]
            let curMax = max(preValue + value, value)
            maxValue = max(maxValue, curMax)
            preValue = curMax
        }
        return maxValue
    }
}

let solution = Solution()
solution.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
