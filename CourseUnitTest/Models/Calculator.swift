//
//  Calculator.swift
//  CourseUnitTest
//
//  Created by Manuel Alvarez on 5/1/21.
//

import Foundation


class Calculator {
    
    func add(val1: Int, val2: Int) -> Int{
        return val1 + val2
    }
    
   func substrac(val1: Int, val2: Int) -> Int {
        return val1 - val2
    }
    
    func divide (n1: Int, n2: Int) throws -> Int {
        if (n2 == 0) {
            throw CalculatorError.CantDivideByZero
        }
        return n1 / n2
    }
    
    func intToSquared(val: [Int]) -> [Int]{
        return val.map { $0 * $0 }
    }
}

enum CalculatorError : Error {
    case CantDivideByZero
}
