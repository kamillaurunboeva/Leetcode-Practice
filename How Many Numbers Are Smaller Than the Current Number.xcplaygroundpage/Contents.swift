//: [Previous](@previous)

import Foundation
/*Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].
 
 Return the answer in an array.
 Example 1:

 Input: nums = [8,1,2,2,3]
 Output: [4,0,1,1,3]
 Explanation:
 For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
 For nums[1]=1 does not exist any smaller number than it.
 For nums[2]=2 there exist one smaller number than it (1).
 For nums[3]=2 there exist one smaller number than it (1).
 For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
 Example 2:

 Input: nums = [6,5,4,8]
 Output: [2,1,0,3]
 Example 3:

 Input: nums = [7,7,7,7]
 Output: [0,0,0,0]
  

 Constraints:

 2 <= nums.length <= 500
 0 <= nums[i] <= 100*/


class Solution {
    func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
        
var result: [Int] = []

for num in nums {
    let count = nums.filter { $0 < num }.count 
        result.append(count)
    }
    return result
}
}
// Two-Pointer (Only for Sorted Arrays)


func twoSumSorted(_ nums: [Int], _ target: Int) -> [Int] {
    let sorted = nums.sorted()
    var left = 0
    var right = sorted.count - 1

    while left < right {
        let sum = sorted[left] + sorted[right]

        if sum == target {
            return [sorted[left], sorted[right]]
        } else if sum < target {
            left += 1
        } else {
            right -= 1
        }
    }
    return []
}

