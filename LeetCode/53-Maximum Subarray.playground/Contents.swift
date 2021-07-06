class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        /*
         40 ms, 21 MB
         */
        if nums.count == 0 { return 0 }
        if nums.count == 1 { return nums[0] }
        
        var resultSum = Int.min
        var currentSum = 0
        for index in 0..<nums.count {
            let num = nums[index]
            currentSum = max(num, currentSum + num)
            resultSum = max(currentSum, resultSum)
            print("--------------")
            print("num: \(num)")
            print("currentSum: \(currentSum)")
            print("resultSum: \(resultSum)")
            print("--------------")
        }
        
        return resultSum
    }
}

Solution().maxSubArray([-2,1,-3,4,-1,2,1,-5,4]) // return 6 [4,-1,2,1]
Solution().maxSubArray([-2, -1]) // return -1 [-1]
Solution().maxSubArray([1, 2]) // return 3 [1,2]
