
import Foundation


func printStarPattern(_ n: Int){
    for i in 1..<n{
        for j in 1...i{
            print("*",terminator:" ")
        }
        print("")
    }
    for k in stride(from: n, through: 1, by: -1){
        for l in 1...k{
            print("*",terminator:" ")
        }
        print("")
    }
}

printStarPattern(5)

/*

 *
 * *
 * * *
 * * * *
 * * * * *
 * * * *
 * * *
 * *
 *
 
 
*/

let set1: Set<Int> = [23,54,13,35,64]
let set2: Set<Int> = [56,45,64,13]

// Union : Combine Elements of Both Sets (remove the duplicates)

let unionSet = set1.union(set2)
print("UnionSet : \(unionSet)") // [35, 45, 54, 56, 64, 23, 13]


// Intersection : Common Elelements between Sets

let intersectionSet = set1.intersection(set2)
print("IntersectionSet : \(intersectionSet)") // [64, 13]


// Subtracting : Elements in Set1 not in Set2

let subtractingSet = set1.subtracting(set2)
print("SubtractingSet : \(subtractingSet)") // [23, 35, 54]

let subtractingSet1 = set2.subtracting(set1)
print("SubtractingSet1 : \(subtractingSet1)") // [56, 45]


// Symmetric Difference : Elements is either set, but not both

let symmetricDifferenceSet = set1.symmetricDifference(set2)
print("Symmetric Difference Set : \(symmetricDifferenceSet)") // [45, 56, 54, 23, 35] // removed common [13,64]


// Subset : Check if set1 is a subset of set2 and set1 is a subset of set3

let set3: Set<Int> = [23,54,13,35,64]

let isSubset = set1.isSubset(of: set2)
print("is set1 is subset of set2 : \(isSubset)") // false

let isSubset1 = set1.isSubset(of: set3)
print("is set1 is subset of set3 : \(isSubset1)") // true


// SuperSet : Check if set1 is a superset of set2 and set1 is a superset of set3

let isSuperset = set1.isSuperset(of: set2)
print("is set1 is superset of set2 : \(isSuperset)") // false

let isSuperset1 = set1.isSuperset(of: set3)
print("is set1 is superset of set3 : \(isSuperset1)") // true


// Disjoint : Check if set have no elements in common

let set4: Set<Int> = []

let isDisjoint = set1.isDisjoint(with: set2)
print("is set1 and set2 have no common elements : \(isDisjoint)") // false

let isDisjoint1 = set2.isDisjoint(with: set4)
print("is set2 and set4 have no common elements : \(isDisjoint1)") // true

