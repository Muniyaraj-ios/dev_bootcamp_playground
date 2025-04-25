
import Foundation

/*

[ [1,3], [2,6], [8,10], [15,18] ]

Output : [ [1,6], [8,10], [15,18] ]

Explanation

Since intervals [1,3] and [2,6] overlaps merge them into [1,6]

*/

func mergeIntervals(_ intervals: [[Int]]) -> [[Int]] {
    guard intervals.count > 1 else {
        return intervals
    }

    // Sort the intervals by their start time
    let sortedIntervals = intervals.sorted { $0[0] < $1[0] }
    
    var merged: [[Int]] = []
    var currentInterval = sortedIntervals[0]
    
    for i in 1..<sortedIntervals.count {
        let interval = sortedIntervals[i]
        
        if currentInterval[1] >= interval[0] {
            // There is overlap, so we merge the current interval with the new interval
            currentInterval[1] = max(currentInterval[1], interval[1])
        } else {
            // No overlap, add the current interval to the result and move to the next
            merged.append(currentInterval)
            currentInterval = interval
        }
    }
    
    // Add the last interval
    merged.append(currentInterval)
    
    return merged
}

// Test the function
let input = [[1, 3], [15, 18], [2, 6], [8, 10] ]
let output = mergeIntervals(input)
print(output)  // Output: [[1, 6], [8, 10], [15, 18]]
