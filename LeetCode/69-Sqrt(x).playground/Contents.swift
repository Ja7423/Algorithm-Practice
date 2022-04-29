/*
 Given a non-negative integer x, compute and return the square root of x.
 
 Since the return type is an integer, the decimal digits are truncated, and only the integer part of the result is returned.
 
 Note: You are not allowed to use any built-in exponent function or operator, such as pow(x, 0.5) or x ** 0.5.
 
 
 
 Example 1:
 Input: x = 4
 Output: 2
 
 Example 2:
 Input: x = 8
 Output: 2
 Explanation: The square root of 8 is 2.82842..., and since the decimal part is truncated, 2 is returned.
 
 
 Constraints:
 0 <= x <= 231 - 1
 */

import Darwin

func mySqrt(_ x: Int) -> Int {
    var left: Int = 0
    var right: Int = x
    var mid = (right + left) / 2
    
    while right >= left {
        let sqrt = mid * mid
//        print("left \(left), right \(right), mid \(mid), sqrt \(sqrt)")
        
        if sqrt == x { break }
        else if sqrt > x {
            right = mid - 1
        }
        else if sqrt < x {
            left = mid + 1
        }
        
        mid = (right + left) / 2
    }
    return mid
}


Int(sqrt(Double(2147395599)))

mySqrt(2147395599)

mySqrt(1)
