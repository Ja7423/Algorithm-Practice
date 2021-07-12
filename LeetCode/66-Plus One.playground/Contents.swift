/**
 Given a non-empty array of decimal digits representing a non-negative integer, increment one to the integer.
 
 The digits are stored such that the most significant digit is at the head of the list, and each element in the array contains a single digit.
 
 You may assume the integer does not contain any leading zero, except the number 0 itself.
 
 
 Example 1:
 ```
 Input: digits = [1,2,3]
 Output: [1,2,4]
 Explanation: The array represents the integer 123.
 ```
 
 Example 2:
 ```
 Input: digits = [4,3,2,1]
 Output: [4,3,2,2]
 Explanation: The array represents the integer 4321.
 ```
 
 Example 3:
 ```
 Input: digits = [0]
 Output: [1]
 ```
 */
func plusOne(_ digits: [Int]) -> [Int] {
    
    var digitsCopy = digits
    var index = digitsCopy.count - 1
    while index >= 0 {
        let d = digitsCopy[index]
        if d == 9 {
            digitsCopy[index] = 0
            
            if index == 0 {
                digitsCopy.insert(1, at: 0)
            }
        }
        else {
            digitsCopy[index] += 1
            break
        }
        
        index -= 1
    }
    
    return digitsCopy
}

plusOne([4,3,2,1]) // [4,3,2,2]
plusOne([7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6])
plusOne([9]) // [1, 0]
