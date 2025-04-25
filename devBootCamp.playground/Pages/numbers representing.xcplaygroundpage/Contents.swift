
import Foundation

/*
Given a sentence with numbers representing a word’s location in the sentence, embedded within each word, and return the sorted sentence.

Note: We are using a maximum of 0-9 numbers only for 1 sentence

Example 1

Input:  is1 Thi0s T3est 2a
Output:  This is a Test

Example 2

Input:  t2o j3oin 4WonderBiz I0 Technolog5ies wan1t
Output:  I want to join WonderBiz Technologies
*/


func sentenceWithFormat(string: String) -> String{
    
    var validString: String = ""
    
    var result: [Int: String] = [:]
    
    var sentence: [String] = string.split(separator: " ").map{ String($0) }
    
    for text in sentence{
        let resultValue = text.filter{ $0.isNumber }
        
        if let number = Int(resultValue){
            result[number] = text.filter{ $0.isLetter }
        }
    }
    
    for r in result.keys.sorted(){
        validString += (result[r] ?? "") + " "
    }
    
    
    defer{ print("given string : \(string) || validString : \(validString)") }
    return validString
}


sentenceWithFormat(string: "is1 Thi0s T3est 2a")
sentenceWithFormat(string: "t2o j3oin 4WonderBiz I0 Technolog5ies wan1t")
