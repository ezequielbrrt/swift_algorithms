import UIKit

/**
 Given an integer x, return true if x is palindrome integer.

 An integer is a palindrome when it reads the same backward as forward.
 For example, 121 is palindrome while 123 is not.

 */

class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        // base case
        if x < 0 { return false }
        
        let auxString = "\(x)"
        
        // convert string to array
        let auxArray = Array(auxString)
        
        // reverse array
        let reversedArray = Array(auxArray.reversed())
        
        return reversedArray == auxArray
     }
}



let solution = Solution()
print(solution.isPalindrome(1213))
