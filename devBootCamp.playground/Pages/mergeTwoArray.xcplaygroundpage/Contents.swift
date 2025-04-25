
import Foundation


func mergeTwoArray(num1: [Int], num2: [Int]){
    
    var result: [Int] = []
    
    for num in num1 where !result.contains(num){
        result.append(num)
    }
    
    for num in num2 where !result.contains(num) {
        result.append(num)
    }
    
    print("result rm dup : \(result)")
    
    for i in 0..<result.count{
        for j in i+1..<result.count{
            if result[i] > result[j]{
                (result[i], result[j]) = (result[j], result[i])
            }
        }
    }
    
    print("result : \(result)")
}


mergeTwoArray(num1: [2,5,8,7,8,5], num2: [4,2,3,9,5,8])

/* O/P :

 result rm dup : [2, 5, 8, 7, 4, 3, 9]
 result : [2, 3, 4, 5, 7, 8, 9]
 
*/
