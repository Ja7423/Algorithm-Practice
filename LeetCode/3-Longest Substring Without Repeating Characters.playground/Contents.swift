class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var head: Int = 0
        var end: Int = 0
        var chars = [Character: Int]()
        var length = 1
        
        if s.count == 0 { return 0 }
        for c in s {
            if let index = chars[c] {
                length = max(end - head, length)
                head = max(head, index + 1)
            }
            
            chars[c] = end
            end += 1
        }
        
        return max(length, end - head)
    }
}


Solution().lengthOfLongestSubstring("aabaab!bb") // ans: ab!
