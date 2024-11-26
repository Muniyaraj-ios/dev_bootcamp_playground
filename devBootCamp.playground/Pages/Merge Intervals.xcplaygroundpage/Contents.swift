

import Foundation

typealias TwoDArrayInt = [[Int]]

func mergerIntervals(_ input: TwoDArrayInt)->TwoDArrayInt{
    guard input.count > 1 else { return input }
    
    let sortedInput = input.sorted{ item1,item2 in
        return item1[0] < item2[0]
    }
    print("SortedInput : \(sortedInput)")
    
    var result: TwoDArrayInt = TwoDArrayInt()
    result.reserveCapacity(input.count)
    result.append(sortedInput[0])
    
    let count = sortedInput.count
    for i in 1..<count{
        let current = sortedInput[i]
        let lastInterval = result.last!
        
        if /*(current[0] >= lastInterval[0]) &&*/ (current[0] <= lastInterval[1]){
            // change last interval
            result.removeLast()
            result.append([
            min(current[0], lastInterval[0]),
            max(current[1], lastInterval[1])
            ])
        }else{
            result.append(current)
        }
    }

    return result
}
let input: TwoDArrayInt = [
    [1,3],
    [12,15],
    [1,3],
    [23,41],
    [8,10],
    [2,6],
    [13,21],
    [20,21],
    [14,22]
]
let result = mergerIntervals(input)
print("\n\(result)\n")

// SortedInput :
//  [[1, 3], [1, 3], [2, 6], [8, 10], [12, 15], [13, 21], [14, 22], [20, 21], [23, 41]]

// O/P : [[1, 6], [8, 10], [12, 22], [23, 41]]
