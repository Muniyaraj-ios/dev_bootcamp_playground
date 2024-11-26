
import Foundation

func mergeSort(_ array: [Int]) -> [Int] {
    // Base case: if the array has 0 or 1 elements, it's already sorted
    guard array.count > 1 else { return array }
    
    // Split the array into two halves
    let middleIndex = array.count / 2
    let leftArray = Array(array[0..<middleIndex])
    let rightArray = Array(array[middleIndex..<array.count])
    
    // Recursively sort both halves
    let sortedLeftArray = mergeSort(leftArray)
    let sortedRightArray = mergeSort(rightArray)
    
    // Merge the sorted halves
    return merge(leftArray: sortedLeftArray, rightArray: sortedRightArray)
}

func merge(leftArray: [Int], rightArray: [Int]) -> [Int] {
    var leftIndex = 0
    var rightIndex = 0
    var orderedArray: [Int] = []
    
    // Compare elements from both halves and merge them in a sorted order
    while leftIndex < leftArray.count && rightIndex < rightArray.count {
        let leftElement = leftArray[leftIndex]
        let rightElement = rightArray[rightIndex]
        
        if leftElement < rightElement {
            orderedArray.append(leftElement)
            leftIndex += 1
        } else if leftElement > rightElement {
            orderedArray.append(rightElement)
            rightIndex += 1
        } else {
            orderedArray.append(leftElement)
            leftIndex += 1
            orderedArray.append(rightElement)
            rightIndex += 1
        }
    }
    
    // Append remaining elements, if any
    while leftIndex < leftArray.count {
        orderedArray.append(leftArray[leftIndex])
        leftIndex += 1
    }
    
    while rightIndex < rightArray.count {
        orderedArray.append(rightArray[rightIndex])
        rightIndex += 1
    }
    
    return orderedArray
}

// Example usage
let array = [8, 3, 5, 4, 2, 7, 6, 1]
let sortedArray = mergeSort(array)
print(sortedArray) // Output: [1, 2, 3, 4, 5, 6, 7, 8]

/*

1. Bubble Sort: Repeatedly swaps adjacent elements if they are in the wrong order. Simple but inefficient.
 
2. Selection Sort: Selects the smallest (or largest) element from the unsorted portion and moves it to the sorted portion.
 
3. Insertion Sort: Builds the final sorted array one item at a time, with each new item being inserted into its correct position.
 
4. Merge Sort: Divides the array into halves, recursively sorts them, and then merges the sorted halves.
 
5. Quick Sort: Picks a pivot element and partitions the array around the pivot, recursively sorting the partitions.
 
*/
