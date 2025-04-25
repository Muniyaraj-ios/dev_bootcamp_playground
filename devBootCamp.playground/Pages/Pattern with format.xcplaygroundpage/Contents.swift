
import Foundation

/*
 
 /* Pattern 1 */
    1 1 2 1
     2 3 3
      5 6
       11
 
 /* Pattern 2 */
     1 1 1 1
      2 2 2
       4 4
        8
*/


func drawFormat(n: Int = 4){
    
    var result: [[Int]] = []
    var pre_row: [Int] = []
    
    for j in stride(from: n, through: 1, by: -1){
        var firstValue = 0
        
        var row: [Int] = []
        
        for i in 1...j{
            if result.isEmpty{
                /* Pattern 1 */
                if i == 1{
                    row.append(1)
                }else if j == i{
                    row.append(1)
                }else{
                    firstValue += 1
                    row.append(firstValue)
                }
                /* Pattern 2 */
                
//                row.append(1)
                 
            }else{
                let value = pre_row[i] + pre_row[i - 1]
                row.append(value)
            }
        }
        
        pre_row = row
        result.append(row)
    }
    
    print("result: \(result)")
}


drawFormat()
