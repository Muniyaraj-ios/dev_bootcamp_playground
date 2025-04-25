
import Foundation


/*
 
 I/P : 3[a]2[bc] | O/P : aaabcbc
 
 I/P : 3[a2[c]] | O/P : accaccacc
 
 
*/


func decodeString(_ s: String) {
    
    var stack: [(String, Int)] = []
    var currentString = ""
    var currentNumber = 0
    
    for char in s{
        if char.isNumber{
            currentNumber = currentNumber * 10 + Int(String(char))!
        }else if char == "["{
            stack.append((currentString, currentNumber))
            currentString = ""
            currentNumber = 0
        }else if char == "]"{
            let (previousString, repeatCount) = stack.removeLast()
            currentString = previousString + String(repeating: currentString, count: repeatCount)
        }else{
            currentString.append(char)
        }
    }
    print("currentString : \(currentString)")
}

func stringDecode(s: String){
    var stack: [(String, Int)] = []
    var currentString = String()
    var currentNumber = 0
    
    for char in s{
        if char.isNumber{
            currentNumber = (currentNumber * 10) + Int(String(char))!
        }else if char == "["{
            stack.append((currentString, currentNumber))
            currentNumber = 0
            currentString = ""
        }else if char == "]"{
            let (previousString, previousCount) = stack.removeLast()
            currentString = previousString + String(repeating: currentString, count: previousCount)
        }else{
            currentString.append(char)
        }
    }
    
    print("currentString : \(currentString)")
}

stringDecode(s: "7[ac]8[b]")

decodeString("7[ac]8[b]")
//decodeString("3[a]2[bc]")
//decodeString("3[a2[c]]")
