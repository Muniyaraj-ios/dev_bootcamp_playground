
import Foundation


func matchPositiveAndNegative(values: [Int]){
    
    var dict: [Int: Int] = [:]
    var result: [Int] = []
    
    var p_value = 0
    var n_value = 1
    
    for value in values {
        if value < 0{
            
            dict[n_value, default: n_value] = value
            n_value += 2
            
            /*if dict[n_value] == nil{
                dict[n_value] = value
            }else{
                n_value += 2
                dict[n_value] = value
            }*/
        }else{
            
            dict[p_value, default: p_value] = value
            p_value += 2
            
            /*if dict[p_value] == nil{
                dict[p_value] = value
            }else{
                p_value += 2
                dict[p_value] = value
            }*/
        }
    }
    
    for key in dict.keys.sorted() {
        result.append(dict[key] ?? 0)
    }
    
    print("result : \(result)")
}


matchPositiveAndNegative(values: [1,4,5,8,-2,-7,-1,-4])

/*
 
O/P : result : [1, -2, 4, -7, 5, -1, 8, -4]
 
*/
