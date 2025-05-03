
/*Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.
 */

import Foundation

class Solution {
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        
        for(i, num) in nums.enumerated() {
            if let index = dict[target - num] {
              return [index, i]
            }
            dict[num] = i
        }
        return []
    }
}
let solution = Solution()
let result = solution.twoSum([2, 7, 11, 15], 9)
print(result)
