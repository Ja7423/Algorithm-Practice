import Foundation

/**
 Given an integer x, return true if x is palindrome integer.
 
 An integer is a palindrome when it reads the same backward as forward. For example, 121 is palindrome while 123 is not.
 
 
 Example 1:
 ```
 Input: x = 121
 Output: true
 ```
 
 Example 2:
 ```
 Input: x = -121
 Output: false
 Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
 ```
 
 Example 3:
 ```
 Input: x = 10
 Output: false
 Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
 ```
 
 Example 4:
 ```
 Input: x = -101
 Output: false
 ```
 
 */
func isPalindrome(_ x: Int) -> Bool {
//    guard x >= 0 else { return false }
//
//    let strX = String(x)
//    let length = strX.count / 2
//
//    let endIndex = strX.index(strX.startIndex, offsetBy: length)
//    let l2r = strX[strX.startIndex..<endIndex]
//    let startIndex = strX.index(strX.endIndex, offsetBy: -length)
//    let r2l = strX[startIndex..<strX.endIndex]
//    return String(l2r) == String(r2l.reversed())
    
    guard x >= 0 else { return false }
    var xCopy = x, reverse = 0
    while xCopy != 0 {
        let remainder: Int
        (xCopy, remainder) = xCopy.quotientAndRemainder(dividingBy: 10)
        reverse *= 10
        reverse += remainder
    }
    return x == reverse
}

isPalindrome(12345432)
