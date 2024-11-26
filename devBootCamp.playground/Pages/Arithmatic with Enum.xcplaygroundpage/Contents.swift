
import Foundation


indirect enum Expression{
    case number(Int)
    case addition(value1:Expression, value2:Expression)
    case subtraction(value1:Expression, value2:Expression)
    case multiplication(value1:Expression, value2:Expression)
    case division(value1:Expression, value2:Expression)
}

func calculate(expression: Expression)-> Int{
    switch expression {
    case .number(let value):
        return value
    case .addition(let value1, let value2):
        return calculate(expression: value1) + calculate(expression: value2)
    case .subtraction(let value1, let value2):
        return calculate(expression: value1) - calculate(expression: value2)
    case .multiplication(let value1, let value2):
        return calculate(expression: value1) * calculate(expression: value2)
    case .division(let value1, let value2):
        return calculate(expression: value1) / calculate(expression: value2)
    }
}


let addition = Expression.addition(value1: .number(5), value2: .number(3))
let subtraction = Expression.subtraction(value1: addition, value2: .number(2))
let multiplication = Expression.multiplication(value1: subtraction, value2: .number(4))
let division = Expression.division(value1: multiplication, value2: .number(3))

print("addition : \(calculate(expression: addition))\n")
print("subtraction : \(calculate(expression: subtraction))\n")
print("multiplication : \(calculate(expression: multiplication))\n")
print("division : \(calculate(expression: division))")

