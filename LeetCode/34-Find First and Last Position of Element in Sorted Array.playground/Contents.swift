/*
 34. Find First and Last Position of Element in Sorted Array
 
 Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
 
 If target is not found in the array, return [-1, -1].
 
 You must write an algorithm with O(log n) runtime complexity.
 
 
 
 Example 1:
 
 Input: nums = [5,7,7,8,8,10], target = 8
 Output: [3,4]
 
 
 Example 2:
 
 Input: nums = [5,7,7,8,8,10], target = 6
 Output: [-1,-1]
 
 
 Example 3:
 
 Input: nums = [], target = 0
 Output: [-1,-1]
 
 
 Constraints:
 
 0 <= nums.length <= 105
 -109 <= nums[i] <= 109
 nums is a non-decreasing array.
 -109 <= target <= 109
 
 */

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    guard nums.count > 0 else { return [-1, -1] }
    
    var start = -1
    var end = start
    
    for (index, num) in nums.enumerated() {
        if num < target { continue }
        
        if num == target {
            if start == -1 {
                start = index
            }
            end = index
        }
        
        if num > target {
            break
        }
    }
    
    return [start, end]
}

searchRange([5,7,7,8,8,10], 8) // [3, 4]
searchRange([5,7,7,8,8,10], 6) // [-1, -1]
searchRange([1], 1) // [0, 0]
searchRange([1], 0) // [-1, -1]
