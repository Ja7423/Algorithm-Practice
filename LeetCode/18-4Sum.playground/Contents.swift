/*
 Given an array nums of n integers, return an array of all the unique quadruplets [nums[a], nums[b], nums[c], nums[d]] such that:
 
 0 <= a, b, c, d < n
 a, b, c, and d are distinct.
 nums[a] + nums[b] + nums[c] + nums[d] == target
 You may return the answer in any order.
 
 
 
 Example 1:
 Input: nums = [1,0,-1,0,-2,2], target = 0
 Output: [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]
 
 Example 2:
 Input: nums = [2,2,2,2,2], target = 8
 Output: [[2,2,2,2]]
 
 
 Constraints:
 1 <= nums.length <= 200
 -109 <= nums[i] <= 109
 -109 <= target <= 109
 */
func fourSum(_ nums: [Int], _ target: Int) -> [[Int]] {
    guard nums.count > 3 else { return [] }
    var sums = Set<[Int]>()
    let sortedNums = nums.sorted()
    for i in 0..<sortedNums.count - 3 {
        let iNum = sortedNums[i]
        for j in (i+1)..<sortedNums.count - 2 {
            var k = j + 1
            var l = sortedNums.count - 1
            while k < l {
                let jNum = sortedNums[j]
                let kNum = sortedNums[k]
                let lNum = sortedNums[l]
                let sum = iNum + jNum + kNum + lNum
                
                print("i \(i), j \(j), k \(k), l \(l)")
                print("iNum \(iNum), jNum \(jNum), kNum \(kNum), lNum \(lNum), sum \(sum)")
                
                if sum == target {
                    sums.insert([iNum, jNum, kNum, lNum])
                    k += 1
                    l -= 1
                }
                else if sum > target {
                    l -= 1
                }
                else {
                    k += 1
                }
            }
        }
    }
    return Array(sums)
}

func fourSum2(_ nums: [Int], _ target: Int) -> [[Int]] {
    guard nums.count >= 4 else { return [] }
    
    var result = [[Int]]()
    let nums = nums.sorted(), count = nums.count
    
    for i in 0..<(count - 1) where i == 0 || nums[i] != nums[i-1] {
        for j in (i + 1)..<count where j == i + 1 || nums[j] != nums[j-1] {
            var f = j + 1, l = count - 1
            while f < l {
                let a = nums[f], b = nums[l], c = nums[i], d = nums[j]
                let sum = a + b + c + d
                if sum == target { result.append([a,b,c,d]) }
                if sum < target {
                    while nums[f] == a, f < count - 1 { f += 1 }
                } else {
                    while nums[l] == b, l > j { l -= 1 }
                }
            }
        }
    }
    return result
}

//fourSum([1,0,-1,0,-2,2], 0) // [[-2,-1,1,2],[-2,0,0,2],[-1,0,0,1]]

fourSum([2,2,2,2,2], 8) // [2,2,2,2,2]
