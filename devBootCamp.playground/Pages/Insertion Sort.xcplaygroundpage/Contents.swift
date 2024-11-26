
import Foundation

func insertionSort(_ array: inout [Int]) {
    let n = array.count
    for i in 1..<n {
        let key = array[i]
        var j = i - 1
        
        // Move elements of array[0...i-1], that are greater than key, to one position ahead of their current position
        while j >= 0 && array[j] > key {
            array[j + 1] = array[j]
            j -= 1
        }
        array[j + 1] = key
    }
}

// Example usage
var numbers = [64, 34, 25, 12, 22, 11, 90]
print("Unsorted array: \(numbers)")
insertionSort(&numbers)
print("Sorted array: \(numbers)") // [11, 12, 22, 25, 34, 64, 90]
