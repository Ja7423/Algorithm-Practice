/*
 Given an integer array nums of length n and an integer target, find three integers in nums such that the sum is closest to target.
 
 Return the sum of the three integers.
 
 You may assume that each input would have exactly one solution.
 
 
 
 Example 1:
 Input: nums = [-1,2,1,-4], target = 1
 Output: 2
 Explanation: The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
 
 Example 2:
 Input: nums = [0,0,0], target = 1
 Output: 0
 
 
 Constraints:
 3 <= nums.length <= 1000
 -1000 <= nums[i] <= 1000
 -104 <= target <= 104
 
 */

import Darwin
func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    guard nums.count > 3 else {
        return nums.reduce(0, { $0 + $1 })
    }
    
    let sortedNums = nums.sorted()
    var answer = sortedNums[0] + sortedNums[1] + sortedNums[2]
    
    for i in 0..<sortedNums.count {
        var sIndex = i + 1
        var eIndex = sortedNums.count - 1
        let iNum = sortedNums[i]
        
        while sIndex < eIndex {
            let diff = target - answer
            let sNum = sortedNums[sIndex]
            let eNum = sortedNums[eIndex]
            let sum = iNum + sNum + eNum
            
            print("diff: \(diff), iNum: \(iNum), sNum: \(sNum), eNum: \(eNum), sum: \(sum)")
            if abs(target - sum) < abs(diff) {
                answer = sum
                print(answer)
            }
            
            if target - sum > 0 {
                sIndex += 1
            }
            else if target - sum < 0 {
                eIndex -= 1
            }
            else {
                break
            }
            
            print("sIndex: \(sIndex), eIndex: \(eIndex)")
        }
    }
    
//    for i in 0..<sortedNums.count - 2 {
//        var sIndex = i + 1
//        var eIndex = sIndex + 1
//        let iNum = sortedNums[i]
//
//        while sIndex < sortedNums.count - 1 {
//            let diff = target - answer
//            let sNum = sortedNums[sIndex]
//            let eNum = sortedNums[eIndex]
//            let sum = iNum + sNum + eNum
//
//            print("diff: \(diff), iNum: \(iNum), sNum: \(sNum), eNum: \(eNum), sum: \(sum)")
//            if abs(target - sum) < abs(diff) {
//                answer = sum
//                print(answer)
//            }
//
//            if eIndex == sortedNums.count - 1 {
//                sIndex += 1
//                eIndex = sIndex + 1
//            }
//            else {
//                eIndex += 1
//            }
//            print("sIndex: \(sIndex), eIndex: \(eIndex)")
//        }
//    }
    
    return answer
}

//threeSumClosest([-1,2,1,-4], 1) // 2
// -4,-1,1,2

//threeSumClosest([1,1,1,0], -100) // 2
// 0,1,1,1

threeSumClosest([0,2,1,-3], 1) // 0
// -3,0,1,2
