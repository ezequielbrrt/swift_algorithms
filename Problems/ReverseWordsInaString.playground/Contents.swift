import UIKit

class Solution {
    func reverseWords(_ s: String) -> String {
        let allArrays = s.split(separator: " ")
        var arrayResult: [String] = []
        
        allArrays.forEach { arrayAux in
            let arrayResultString: String = String(arrayAux.reversed())
            arrayResult.append(arrayResultString)
        }
        
        return arrayResult.joined(separator: " ")
    }
}

let solution = Solution()
print(solution.reverseWords("Let's take LeetCode contest"))
