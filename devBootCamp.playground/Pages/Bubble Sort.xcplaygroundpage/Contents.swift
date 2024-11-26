
import Foundation

func bubbleSort(_ array: inout [Int]) {
    let n = array.count
    var didSwap: Bool
    
    repeat {
        didSwap = false
        for i in 0..<n-1 {
            if array[i] > array[i+1] {
                array.swapAt(i, i+1)
                didSwap = true
            }
        }
    } while didSwap
}

// Example usage
var numbers = [64, 34, 25, 12, 22, 11, 90]
print("Unsorted array: \(numbers)")
bubbleSort(&numbers)
print("Sorted array: \(numbers)") // [11, 12, 22, 25, 34, 64, 90]
