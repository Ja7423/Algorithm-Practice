class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var numChart = [Int: Int]()
        for i in 0..<nums.count {
            let iValue = nums[i]
            let findValue = target - iValue
            if let j = numChart[findValue] {
                return [i, j]
            }
            else {
                numChart[iValue] = i
            }
        }
        
        return [0]
    }
}

Solution().twoSum([2, 7, 11, 15], 9)
