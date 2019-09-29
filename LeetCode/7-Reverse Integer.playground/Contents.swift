class Solution {
    func reverse(_ x: Int) -> Int {
        if x == 0 { return 0 }
        if x > Int32.max || x < Int32.min { return 0 }
        
        let symbol = (x < 0) ? -1 : 1
        var nx = x * symbol
        var ans: Int = 0
        
        while nx > 0 {
            ans = ans * 10 + nx % 10
            nx = nx / 10
        }
        
        if ans > Int32.max || ans < Int32.min { return 0 }
        ans = ans * symbol
        return ans
    }
}

Solution().reverse(10)


