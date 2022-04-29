/**
 Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and nums[i] + nums[j] + nums[k] == 0.
 
 Notice that the solution set must not contain duplicate triplets.
 
 
 Example 1:
 ```
 Input: nums = [-1,0,1,2,-1,-4]
 Output: [[-1,-1,2],[-1,0,1]]
 ```
 
 Example 2:
 ```
 Input: nums = []
 Output: []
 ```
 
 Example 3:
 ```
 Input: nums = [0]
 Output: []
 ```
 */
func threeSum(_ nums: [Int]) -> [[Int]] {
    guard nums.count >= 3 else { return [] }
    let sortedNums = nums.sorted()
    var result = Set<[Int]>()
    
    print("sortedNums: \(sortedNums)")
    
    for i in 0..<sortedNums.count - 2 {
        var sIndex = i + 1
        var eIndex = sortedNums.count - 1
        
        let num = sortedNums[i]
        while sIndex < eIndex {
            let sNum = sortedNums[sIndex]
            let eNum = sortedNums[eIndex]
            let sum = num + sNum + eNum
            
            print("i: \(i), sIndex: \(sIndex), eIndex: \(eIndex)")
            print("num: \(num), sNum: \(sNum), eNum: \(eNum)")
            
            if sum == 0 {
                result.insert([num, sNum, eNum])
                eIndex -= 1
                sIndex += 1
            }
            else if sum > 0 {
                eIndex -= 1
            }
            else {
                sIndex += 1
            }
        }
    }
    
    return Array(result)
}

// -4, -1, -1, 0, 1, 2
//print(threeSum([-1,0,1,2,-1,-4])) // [[-1,-1,2],[-1,0,1]]
//print(threeSum([1,2,-2,-1])) // []
print(threeSum([-1,0,1,2,-1,-4,-2,-3,3,0,4]))
/*
 o[[-4,0,4],
 o[-4,1,3],
 [-3,-1,4],
 [-3,0,3],
 o[-3,1,2],
 [-2,-1,3],
 o[-2,0,2],
 o[-1,-1,2],
 o[-1,0,1]]
 */
