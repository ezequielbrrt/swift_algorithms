import UIKit

class Solution {
    enum Brankets: String {
        case parenthesesOpen = "("
        case parenthesesClose = ")"
        case bracesOpen = "{"
        case bracesClose = "}"
        case squareOpen = "["
        case squareClose = "]"
        
        var opposite: Brankets? {
            switch self {
            case .parenthesesClose:
                return .parenthesesOpen
            case .bracesClose:
                return .bracesOpen
            case .squareClose:
                return .squareOpen
            default:
                return nil
            }
        }
    }
    
    func isValid(_ s: String) -> Bool {
        let characters = Array(s)
        var openBranketsStack: [Brankets] = [] // ([
        var isValid = true
        for character in characters {
            if let branket = Brankets(rawValue: "\(character)") { // ([)
                switch branket {
                case .parenthesesOpen, .bracesOpen, .squareOpen:
                    openBranketsStack.append(branket)
                default:
                    if openBranketsStack.last?.rawValue ==  branket.opposite?.rawValue { // [)
                        openBranketsStack.removeLast()
                    } else {
                        isValid = false
                    }
                }
            }
        }
        
        return openBranketsStack.isEmpty && isValid
    }
}

let solution = Solution()
solution.isValid("([)]")
