import UIKit

class Solution {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        
        /*
         8 ms, 21.1 MB
         */
        nums = nums.filter { $0 != val }
        return nums.count
        
        /*
         12 ms, 21 MB
         */
//        if nums.count < 1 { return 0 }
//        var index = 0
//        for i in 0..<nums.count {
//            let num = nums[i]
//            if num != val {
//                nums[index] = num
//                index += 1
//            }
//        }
//        return index
        
        
        /*
         12 ms, 21.1 MB
         */
//        if nums.count < 1 { return 0 }
//        var index = 0
//        while index >= 0 {
//            let num = nums[index]
//            if num == val {
//                nums.remove(at: index)
//            }
//            else {
//                index += 1
//            }
//
//            if index >= nums.count {
//                break
//            }
//        }
//        return nums.count
    }
}

var nums = [0,1,2,2,3,0,4,2]
Solution().removeElement(&nums, 2)
print(nums)
