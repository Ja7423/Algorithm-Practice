import UIKit

class Solution {
    func maxArea(_ height: [Int]) -> Int {
        
        var maxArea = 0        
        var lIndex = 0
        var rIndex = height.count - 1
        while lIndex < rIndex {
            let xdistance = rIndex - lIndex
            let area = min(height[lIndex], height[rIndex]) * xdistance
            maxArea = max(maxArea, area)
            
            if height[lIndex] < height[rIndex] {
                lIndex += 1
            }
            else {
                rIndex -= 1
            }
        }
        
        return maxArea
    }
}

Solution().maxArea([1,8,6,2,5,4,8,3,7])
Solution().maxArea([1,7,6,2,5,4,8,3,8])
