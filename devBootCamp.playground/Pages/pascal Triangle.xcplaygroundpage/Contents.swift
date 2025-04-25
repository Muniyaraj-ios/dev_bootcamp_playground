
import Foundation


func pascalTriangle(n: Int = 5){
    guard n > 0 else{ return }
    
    var result: [[Int]] = [[1]]
    
    for i in 1..<n{
        
        var row: [Int] = [1]
        
        for j in 1..<i{
            let preRow = result[i-1]
            
            let value = preRow[j] + preRow[j - 1]
            
            row.append(value)
        }
        
        row.append(1)
        
        result.append(row)
    }
    
    print("result : \(result)")
}

pascalTriangle()
