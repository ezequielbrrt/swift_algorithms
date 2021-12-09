import UIKit

/**
 Given n non-negative integers a1, a2, ..., an , where each represents a point at coordinate (i, ai). n vertical lines are drawn such that the two endpoints of the line i is at (i, ai) and (i, 0). Find two lines, which, together with the x-axis forms a container, such that the container contains the most water.
 */

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var result = 0
        
        var i = 0
        var j = height.count - 1
        
        while i < j {
            let width = j - i
            let area = width * min(height[j], height[i])
            result = max(result, area)
            
            if height[j] > height[i] {
                i += 1
            } else {
                j -= 1
            }
        }
    
        return result
    }
}


let solution = Solution()
solution.maxArea([1,4,3,6,3])
