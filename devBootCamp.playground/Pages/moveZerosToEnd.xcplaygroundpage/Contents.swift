
import Foundation

func moveZerosToEnd(values: [Int]){
    var zeroFlag: Int = 0
    
    var result: [Int] = []
    
    for value in values {
        if value == 0{
            zeroFlag += 1
        }else{
            result.append(value)
        }
    }
    
    for _ in 0..<zeroFlag{
        result.append(0)
    }
    
    print("result : \(result)")
}


moveZerosToEnd(values: [0, 1, 4, 0, 5, 0, 3, 2, 0])

/*

 O/P :  result : [1, 4, 5, 3, 2, 0, 0, 0, 0]
 
*/
