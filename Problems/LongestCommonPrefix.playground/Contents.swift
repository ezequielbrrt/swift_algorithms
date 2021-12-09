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
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var countS: [String: Int]  = [:]
        
        s.forEach {
            countS["\($0)"] = (countS["\($0)"] ?? 0) + 1
        }
        
        t.forEach {
            countS["\($0)"] = (countS["\($0)"] ?? 0) - 1
        }
        
        var anagramCount = 0
        countS.forEach { if $0.value != 0 { anagramCount += 1 } }
        return anagramCount == 0
    }
    
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        nums = Array(Set(nums))
        nums.sort()
        return nums.count
    }
    
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        nums = nums.compactMap {  return ($0 != val) ? $0 : nil }
        return nums.count
    }
    
    func isPowerOfTwo(_ n: Int) -> Bool {
        let result = n % 2
        print(result)
        return result == 0
    }
}

let solution = Solution()
// let value = solution.longestCommonPrefix(["owerfl","flow","ightfl"])
// print(" solucion \(value) ")
print(solution.isPowerOfTwo(8))
