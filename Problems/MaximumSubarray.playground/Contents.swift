import UIKit

/**
 Given an integer array nums, find the contiguous subarray (containing at least one number) which has the largest sum and return its sum.

 A subarray is a contiguous part of an array.
 */

class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxValue = nums[0] // 6
        var preValue = nums[0] // 3
        
        for i in 1..<nums.count {
            let value = nums[i] // 1
            let curMax = max(preValue + value, value) // (3 + 1) - 1 -> 4
            maxValue = max(maxValue, curMax) // 4 - 6 -> 6
            preValue = curMax // 6
        }
        return maxValue
    }
    
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
            result = (hours == 12) ? (12 - hours) : hours
            resultString = (result < 10 ) ? "0\(result)" : "\(result)"
        } else {
            if hours == 12 {
                resultString = "12"
            } else {
                result = 12 + hours
                resultString = "\(result)"
            }
            
        }
        
        return "\(resultString):\(timeArray[1]):\(timeArray[2].prefix(2))"
    }
}

let solution = Solution()
// solution.maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
solution.timeConversion(s: "04:59:59AM")
