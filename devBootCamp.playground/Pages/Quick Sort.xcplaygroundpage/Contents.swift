
import Foundation

func quickSort(_ array: inout [Int], low: Int, high: Int) {
    if low < high {
        let pi = partition(&array, low: low, high: high)
        
        // Recursively sort elements before partition and after partition
        quickSort(&array, low: low, high: pi - 1)
        quickSort(&array, low: pi + 1, high: high)
    }
}

func partition(_ array: inout [Int], low: Int, high: Int) -> Int {
    let pivot = array[high]
    var i = low - 1
    
    for j in low..<high {
        if array[j] < pivot {
            i += 1
            array.swapAt(i, j)
        }
    }
    array.swapAt(i + 1, high)
    return i + 1
}

// Example usage
var numbers = [64, 34, 25, 12, 22, 11, 90]
print("Unsorted array: \(numbers)")
quickSort(&numbers, low: 0, high: numbers.count - 1)
print("Sorted array: \(numbers)") // [11, 12, 22, 25, 34, 64, 90]
