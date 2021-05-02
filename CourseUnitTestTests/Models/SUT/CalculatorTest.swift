//
//  CalculatorTest.swift
//  CourseUnitTestTests
//
//  Created by Manuel Alvarez on 5/1/21.
//

import Foundation
import XCTest

@testable import CourseUnitTest

class CalculatorTest: XCTestCase {
    
//    MARK: - SUT subjet under test
    var sut : Calculator!
    
//    MARK: - First Method from XCTest that execute before each test
    override func setUp() {
        sut = Calculator()
    }
    
//    MARK:  - Tear Down (clean inizialized) - execute after each test
    override func tearDown() {
        sut = nil
    }
    
//    MARK: - Take care!: the class has been initialized
    func testCalculatorNotNil () {
        XCTAssertNotNil(sut, "SUT cant be nil")
    }
    
//    MARK: - How to named test?
    func test_MethodName_StateUnderTest_ExpectedBehaviour(){}
    
    func test_Add_Assert(){
        //1. - Arrange: We expected that
        let expectedResult = 30
        var currentResult : Int!
        //2. - Act: Executed the method we need to try
        currentResult = sut.add(val1: 10, val2: 20)
        //3. - Assert
        XCTAssertEqual(expectedResult, currentResult)
    }
    
    func test_Add_AssertGWT(){
        //1. - Given: We expected that
        let expectedResult = 11
        var currentResult : Int!
        //2. - When: Executed the method we need to try
        currentResult = sut.add(val1: 4, val2: 7)
        //3. - Then
        XCTAssertEqual(expectedResult, currentResult)
    }
    
    func test_Add(){
        XCTAssertEqual(18, sut.add(val1: 11, val2: 7))
    }
    
    func test_AssertTypes(){
        XCTAssertTrue(1 == 1)
        XCTAssertFalse(1 == 2)
        XCTAssertNil(nil)
        XCTAssertNotNil(sut)
        XCTAssertEqual(18, sut.add(val1: 11, val2: 7))
        XCTAssertEqual("manuel", "manuel")
        XCTAssertGreaterThan(20, 1)
        XCTAssertLessThan(1, 20)
    }
    
    func test_Substract () {
        XCTAssertEqual(4, sut.substrac(val1: 11, val2: 7))
    }
    
    func test_Divide() {
        XCTAssertEqual(2, try sut.divide(n1: 4, n2: 2))
    }
    
    func test_Divide_ByZero() {
        XCTAssertThrowsError(try sut.divide(n1: 4, n2: 0))
    }
    
    func test_Divide_ByZero_Disable () {
        XCTAssertThrowsError(try sut.divide(n1: 4, n2: 0))
    }
    
    
//    MARK: - Perfomance test
    func testPerformance(){
        self.measure {
            sut.add(val1: 4, val2: 4)
        }
    }
    
//    MARK: - Excersice 1: receive one arraay of int, and give back the same, but squared
    func test_intToSquared_ArrayOfInt_ArraySquared(){
        // Arrange:
        let expected = [4, 4, 4, 4, 4]
        // Act:
        let currentResult = sut.intToSquared(val: [2,2,2,2,2])
        // Assert:
        XCTAssertEqual(expected, currentResult)
    }
    
    func test_intoSquared_Measure() {
        var numbers = [Int]()
        for i in 1...5000000 {
            numbers.append(i)
        }
        self.measure {
            sut.intToSquared(val: numbers)
        }
    }
    
}
