//: [Previous](@previous)

import Foundation

/*Given an array nums containing n distinct numbers in the range [0, n], return the only number in the range that is missing from the array.*/

class Solutuion {
    func missingNumber(_ nums: [Int]) -> Int {
         
        var missingNumber = nums.count
        for(index, num) in nums.enumerated() {
//            I use XOR to find a missing number
            missingNumber ^= index ^ num
        }
        return missingNumber
    }
}
