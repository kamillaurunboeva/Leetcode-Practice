//: [Previous](@previous)

import Foundation

/*Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
*/
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
       let numsSet = Set(nums)
       let numsInt = Array(numsSet).sorted()

       if nums.sorted() == numsInt {
        return false
       }
       return true
    }
}
 
