
import Foundation

func selectionSort(_ array: inout [Int]) {
    let n = array.count
    
    for i in 0..<n {
        var minIndex = i
        for j in i+1..<n {
            if array[j] < array[minIndex] {
                minIndex = j
            }
        }
        if i != minIndex {
            array.swapAt(i, minIndex)
        }
    }
}

// Example usage
var numbers = [64, 34, 25, 12, 22, 11, 90]
print("Unsorted array: \(numbers)")
selectionSort(&numbers)
print("Sorted array: \(numbers)") // [11, 12, 22, 25, 34, 64, 90]
