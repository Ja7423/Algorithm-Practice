/*
 Given an array nums of distinct integers, return all the possible permutations. You can return the answer in any order.
 
 
 
 Example 1:
 
 Input: nums = [1,2,3]
 Output: [[1,2,3],[1,3,2],[2,1,3],[2,3,1],[3,1,2],[3,2,1]]
 
 Example 2:
 Input: nums = [0,1]
 Output: [[0,1],[1,0]]
 
 Example 3:
 Input: nums = [1]
 Output: [[1]]
 
 
 Constraints:
 1 <= nums.length <= 6
 -10 <= nums[i] <= 10
 All the integers of nums are unique.
 
 */
func permute(_ nums: [Int]) -> [[Int]] {
    let result = permuteWirth(nums, nums.count - 1)
    return result
}

func permuteWirth<T>(_ a: [T], _ n: Int) -> [[T]] {
    print("permuteWirth -> n: \(n), a \(a)")
    if n == 0 {
        print(a)   // display the current permutation
        return[a]
    } else {
        var result = [[T]]()
        var a = a
        result.append(contentsOf: permuteWirth(a, n - 1))
        for i in 0..<n {
            a.swapAt(i, n)
            print("1. swapAt i: \(i), n: \(n), a \(a)")
            result.append(contentsOf: permuteWirth(a, n - 1))
            a.swapAt(i, n)
            print("2. swapAt i: \(i), n: \(n), a \(a)")
        }
        
        return result
    }
}

let letters = [1,2,3]
permute(letters)
