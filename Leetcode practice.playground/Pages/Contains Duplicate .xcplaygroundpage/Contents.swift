import Foundation

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let hasDuplicates = nums.count != Set(nums).count

        return hasDuplicates
    }
}

// Example usage:
let solution = Solution()
print(solution.containsDuplicate([1, 2, 3, 4, 4]))
print(solution.containsDuplicate([1, 2, 3, 4, 5]))

