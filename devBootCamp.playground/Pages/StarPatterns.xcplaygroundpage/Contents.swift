
import Foundation

var greeting = "Hello, playground"


func printStarPattern(_ n: Int){
    guard n > 0 else { return }
    for i in 1..<n{
        for j in 1...i{
            print("*",terminator: " ")
        }
        print("")
    }
    for k in stride(from: n, through: 1, by: -1){
        for l in 1...k{
            print("*",terminator: " ")
        }
        print("")
    }
}

printStarPattern(5)
