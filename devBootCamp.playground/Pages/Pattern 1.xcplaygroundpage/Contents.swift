

import Foundation

/*
 
 n = 5
 
        1
      2 1
    3 2 1
  4 3 2 1
5 4 3 2 1
 
*/


func pattern1(n: Int = 5){
    
    for i in 1...n{
        
        for j in stride(from: i, through: 1, by: -1){
            print("\(j)", terminator: " ")
        }
        print("\n")
    }
}

pattern1()

/*
 
O/P :

1

2 1

3 2 1

4 3 2 1

5 4 3 2 1

*/
