

import Foundation

/*
 
 n = 4
 
        1
       3 2
      6 5 4
    10 9 8 7
    10 9 8 7
      6 5 4
       3 2
        1
*/


func pattern2(n: Int = 5){
    
    var value: Int = 0
    
    for i in 1...n{
        for j in stride(from: i, through: i, by: 1){
            value += j
            print("\(value)", terminator: " ")
        }
        print("\n")
    }
    
}

pattern2()
