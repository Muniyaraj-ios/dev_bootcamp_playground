
import Foundation


func left_rotateNum(nums: inout [Int], k: Int){
    if k > 0{
        let rotateK = k % nums.count
        for _ in 1...rotateK{
            let removeValue = nums.remove(at: nums.count - 1)
            nums.insert(removeValue, at: 0)
        }
    }
}

func right_rotateNum(nums: inout [Int], k: Int){
    if k > 0{
        let rotateK = k % nums.count
        for _ in 1...rotateK{
            let removeFirst = nums.removeFirst()
            nums.append(removeFirst)
        }
    }
}


var normalArray = [1, 2, 3, 4, 5]

left_rotateNum(nums: &normalArray, k: 12)

print("\(normalArray)") /* O/P : [4, 5, 1, 2, 3] */


var normalArray_right = [1, 2, 3, 4, 5]

right_rotateNum(nums: &normalArray_right, k: 2)

print("\(normalArray_right)") /* O/P : [3, 4, 5, 1, 2] */
