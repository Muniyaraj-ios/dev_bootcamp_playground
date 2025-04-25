

import Foundation


func mergeIntervals(value : [[Int]]){
    
    guard value.count > 1 else{ return }
    
    let sortedIntervals: [[Int]] = value.sorted{ $0[0] < $1[0] }
    
    var sorted_result: [[Int]] = []
    
    var currentInterval = sortedIntervals[0]
    
    for i in 1..<sortedIntervals.count{
        let interval = sortedIntervals[i]
        
        if currentInterval[1] >= interval[0]{
            currentInterval[1] = max(interval[1], currentInterval[1])
        }else{
            sorted_result.append(currentInterval)
            currentInterval = interval
        }
    }
    
    sorted_result.append(currentInterval)
    
    print("sorted_result : \(sorted_result)")
}


mergeIntervals(value: [[1, 3], [15, 18], [2, 6], [8, 10] ])
mergeIntervals(value: [
    [1,3],
    [12,15],
    [1,3],
    [23,41],
    [8,10],
    [2,6],
    [13,21],
    [20,21],
    [14,22]
])

// Output: [[1, 6], [8, 10], [15, 18]]
