

import Foundation

/*
 
 n = 5
                1
              2 4
            3 5 7
         6 8 10 12
     9 11 13 15 17
 14 16 18 20 22 24
 
*/


func pattern3(n: Int = 5){
    guard n > 0 else { return }
    
    var currentEValue = 2
    var currentOValue = 1
    
    for i in 1...n {
        for _ in 1...i {
            if i % 2 == 0 {
                print(currentEValue, terminator: " ")
                currentEValue += 2
            } else {
                print(currentOValue, terminator: " ")
                currentOValue += 2
            }
        }
        print("\n")
    }
}

pattern3()

/*
 
O / P

 1

 2 4

 3 5 7

 6 8 10 12

 9 11 13 15 17
 
*/
