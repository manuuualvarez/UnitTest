//
//  Add.swift
//  CourseUnitTest
//
//  Created by Manuel Alvarez on 5/2/21.
//

import Foundation


class Add {
    
    var validNumber: ValidNumber
    var print: Print?
    
    init(validNumber: ValidNumber) {
        self.validNumber = validNumber
    }
    
    init(validNumber: ValidNumber, print: Print) {
        self.validNumber = validNumber
        self.print = print
    }
    
    func add (_ val1: Int, val2: Int)  ->  Int {
        if validNumber.check(val1) && validNumber.check(val2) {
            return val1 + val2
        }
        return 0
    }
    
    func addPrint(a: Int, b: Int){
        if validNumber.check(a) && validNumber.check(b) {
            print?.showMessage(a + b)
        }else {
            print?.showError()
        }
    }
    
    
}

enum ValidNumberError : Error {
    case notValidNumber
}

