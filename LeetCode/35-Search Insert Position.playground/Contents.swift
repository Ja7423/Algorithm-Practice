import UIKit

class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        
        /*
         32 ms, 21.2 MB
         */
        var starIndex = nums.count / 2
        if nums[starIndex] > target {
            starIndex = 0
        }
        
        for i in starIndex..<nums.count {
            let num = nums[i]
            if num < target {
                continue
            }
            
            return i
        }
        return nums.count
        
        /*
         32 ms, 21.2 MB
         */
//        var index = 0
//        for num in nums {
//            if num < target {
//                index += 1
//                continue
//            }
//
//            break
//        }
//
//        return index
    }
}

Solution().searchInsert([1,3,5,6], 5)
Solution().searchInsert([1,3,5,6], 2)
Solution().searchInsert([1,3,5,6], 0)
Solution().searchInsert([1,3,5,6], 7)
