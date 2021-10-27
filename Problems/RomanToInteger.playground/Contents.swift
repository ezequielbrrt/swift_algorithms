import UIKit

class Solution {
    var romanNumbers: [String: Int] = ["I":1,
                                      "V": 5,
                                      "X": 10,
                                      "L": 50,
                                      "C": 100,
                                      "D": 500,
                                      "M": 1000]
    
    func romanToInt(_ s: String) -> Int {
        // base cases
        if s.count == 1 { return romanNumbers[s] ?? 0 }
        
        var index: Int = -2
        var nextIndex: Int = -1
        var count: Int = 0
        let sArray = Array(s)
            
        let countArray: [Int] = sArray.compactMap { romanNumbers["\($0)"] }
                
        while nextIndex != s.count - 1 {
            index = index + 2
            nextIndex = nextIndex + 2
            
            let currentValue = countArray[index]
            nextIndex = index + 1
            
            if nextIndex > s.count - 1 {
                count = count + currentValue
                return count
            } else {
                let nextValue = countArray[nextIndex]
                if currentValue < nextValue {
                    count = count + (nextValue - currentValue)
                } else {
                    count = count + (currentValue + nextValue)
                }
            }
        }

        return count
    }
}


let solution = Solution()
print(solution.romanToInt("MCM"))
