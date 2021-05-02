//
//  CalculatorTemp.swift
//  CourseUnitTest
//
//  Created by Manuel Alvarez on 5/2/21.
//

import Foundation

class CalculatorTemp {
    
    func convertCtoF(_ degree: Double) -> Double {
        return (degree * 9 / 5) + 32
    }
    
    func convertFtoC(_ fah: Double) -> Double {
        return (fah - 32) / 9 * 5
    }
    
}
