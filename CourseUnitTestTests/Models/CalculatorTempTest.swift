//
//  CalculatorTempTest.swift
//  CourseUnitTestTests
//
//  Created by Manuel Alvarez on 5/2/21.
//

import Foundation
import XCTest

@testable import CourseUnitTest

class CalculatorTempTest: XCTestCase {
        
    var sut : CalculatorTemp!
    
    override func setUp() {
        sut = CalculatorTemp()
    }
    
    override  func tearDown() {
        sut = nil
    }

    func test_convertCtoF_inputDegree_returnFaherenheit(){
        // Arrange
        let expected: Double = -9.4
        // Act
        let result = sut.convertCtoF(-23)
        // Assert
        XCTAssertEqual(expected, result, accuracy: 0.001)
    }
    
    func test_convertFtoC_inputFaherenheit_returnDegree(){
        // Arrange
        let expected = 25.5555
        // Act
        let result = sut.convertFtoC(78)
        // Assert
        XCTAssertEqual(expected, result, accuracy: 0.001)
    }
    
}
