
import Foundation

// The first 11 cube numbers are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, and 100

func checkNumberisSquare(_ val: Int)-> (Int,Bool){
    guard val >= 0 else{ return (0,false) }
    var number: Int = 0
    while number * number <= val{
        if (number * number) == val{
            return (number,true)
        }
        number += 1
    }
    return (0,false)
}

let val = 24
let checkisSquare = checkNumberisSquare(val)
print(" \(val) is a \(checkisSquare.1 ? "" : "Not ")Perfect Square root : \(checkisSquare)")
