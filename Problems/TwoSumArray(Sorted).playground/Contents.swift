import UIKit

class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var stopWhile = false
        
        var index = 0
        var baseIndex = -1
        var nextIndex = -1
        
        while !stopWhile {
            let baseNumber = numbers[index]
            baseIndex = index
            
            for i in (baseIndex + 1) ..<  numbers.count {
                let nextNumber = numbers[i]
                nextIndex = i
                
                if (nextNumber + baseNumber) == target {
                    stopWhile = true
                    break
                }
            }
            index = index + 1
        }
        
        return [baseIndex + 1, nextIndex + 1]
    }
    
}

let solution = Solution()
print(solution.twoSum([2,7,11,15], 9))
