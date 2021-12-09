import UIKit

/**
 You are given an array prices where prices[i] is the price of a given stock on the ith day.

 You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.

 Return the maximum profit you can achieve from this transaction. If you cannot achieve any profit, return 0.
 */

class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var buy: Int?
        var profit = 0
        for val in prices {
            if let buyVal = buy {
                let currentProfit = val - buyVal
                profit = max(currentProfit, profit)
                if currentProfit < 0 {
                    buy = val
                }
            } else {
                buy = val
            }
        }
        return profit
    }
}

let solution = Solution()
solution.maxProfit([2,4,1])
