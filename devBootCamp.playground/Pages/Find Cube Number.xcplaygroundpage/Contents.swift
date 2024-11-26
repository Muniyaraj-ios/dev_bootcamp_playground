

import Foundation

func findCubeNumber_with_inbuild(_ number: Int)->(Int,Bool){
    let cubeRoot = round(pow(Double(number), 1.0 / 3.0))
    let result = Int(cubeRoot * cubeRoot * cubeRoot) == number
    return (result ? Int(cubeRoot) : 0,result)
    
}

let number_: Int = 125
let calculateRoot_ = findCubeNumber_with_inbuild(number_)
print("\(number) is a \(calculateRoot_.1 ? "" : "Not ")Perfect Cube Number : \(calculateRoot_)")

// The first 11 cube numbers are 0, 1, 8, 27, 64, 125, 216, 343, 512, 729, and 1000

func findCubeNumber_native(_ number: Int)->(Int,Bool){
    guard number >= 0 else { return (-1,false) }
    var it_number = 0
    while it_number * it_number * it_number <= number {
        if it_number * it_number * it_number == number{
            return (it_number,true)
        }
        it_number += 1
    }
    return (-1,false)
}

let number: Int = 64
let calculateRoot = findCubeNumber_native(number)
print("\(number) is a \(calculateRoot.1 ? "" : "Not ")Perfect Cube Number : \(calculateRoot)")
