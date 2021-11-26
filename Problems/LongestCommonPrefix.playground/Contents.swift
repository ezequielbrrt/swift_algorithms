import UIKit
/**
 Write a function to find the longest common prefix string amongst an array of strings.

 If there is no common prefix, return an empty string "".
 */

class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        if strs.count == 0 { return "" }
        
        var minStr = (strs.min{$0.count < $1.count})!
        for str in strs {
            while !str.hasPrefix(minStr) {
                minStr.removeLast()
            }
        }
        
        return minStr
    }
}

let solution = Solution()
let value = solution.longestCommonPrefix(["owerfl","flow","ightfl"])
print(" solucion \(value) ")
