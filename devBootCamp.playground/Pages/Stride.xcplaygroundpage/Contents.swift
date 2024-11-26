
import Foundation

/*
   Stride : 
 
        * Stride is a function used to generate a sequence of values, typically used for iterating over a range with a specific step value.
        * It can be particularly useful when need to create loops that increment by more than one or handle ranges thats included non-integer values, such as floating-point numbers.
   stride(from: , to: , by: ) : Generate a sequence from a starting value up to, but not including, an end value.

   stride(from: , through: , by: ) : Generate a sequence from a starting value up to and including an end value.

*/

for i in stride(from: 10, to: 20, by: 2){
    print("\(i)",terminator: " ") // 10 12 14 16 18
}

print("\n")

for j in stride(from: 10, through: 20, by: 2){
    print("\(j)",terminator: " ") // 10 12 14 16 18 20
}

print("\n")

//  1.Iterating with Custom Step Values:

for angle in stride(from: 0, to: 180, by: 45){
    print("\(angle)",terminator: " ")   // 0 45 90 135
}

print("\n")

for angle in stride(from: 0, through: 180, by: 45){
    print("\(angle)",terminator: " ")   // 0 45 90 135 180
}

print("\n")

//  2.Iterating over Floating-Point Ranges

for value in stride(from: 0.0, through: 0.5, by: 0.1){
    print("\(value)",terminator: " , ")   // 0.0 , 0.1 , 0.2 , 0.3 , 0.4 , 0.5
}

print("\n")

//  3.Reversing Range

for value in stride(from: 10, through: 1, by: -2){
    print("\(value)", terminator: " ")  // 10 8 6 4 2
}
