import UIKit

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        /*
         228 ms, 23.5 MB
         */
//        var set = Set<Int>()
//        for num in nums {
//            set.insert(num)
//        }
//
//        nums = set.sorted {
//            $0 < $1
//        }
//
//        return set.count
        
        
        /*
         132 ms, 21.3 MB
         */
//        var existNum = [Int: Int]()
//        var filterNums = [Int]()
//        for num in nums {
//            if existNum[num] == nil {
//                existNum[num] = 1
//                filterNums.append(num)
//            }
//        }
//
//        nums = filterNums
//        return filterNums.count
        
        
        /*
         116 ms, 20.8 MB
         */
        if nums.count == 0 {
            return 0
        }
        var count = 0
        for i in 1..<nums.count {
            if nums[i] != nums[count] {
                count += 1
                nums[count] = nums[i]
            }
        }
        
        return count + 1
    }
}

var duplicateArray = [0,0,1,1,1,2,2,3,3,4]
Solution().removeDuplicates(&duplicateArray) // 5
print(duplicateArray)   // [0,1,2,3,4,......]
