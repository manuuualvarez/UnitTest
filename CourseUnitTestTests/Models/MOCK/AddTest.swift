//
//  AddTest.swift
//  CourseUnitTestTests
//
//  Created by Manuel Alvarez on 5/2/21.
//

import Foundation
import XCTest
import Mockingbird

@testable import CourseUnitTest

class AddTest : XCTestCase {
    
    var sut: Add!
    
//    MARK: - Set the first mock for dependecies of our sout
    let mockValidNumber : ValidNumberMock = mock(ValidNumber.self)
    let mockPrint: PrintMock = mock(Print.self)
    
    override func setUp() {
        sut = Add(validNumber: mockValidNumber, print: mockPrint)
    }
    
    override func tearDown() {
        sut = nil
    }
    
    
    func test_add(){
        let addSut = Add(validNumber: mockValidNumber)
        given(mockValidNumber.check(3)) ~> true
        given(mockValidNumber.check(4)) ~> true
        let result = addSut.add(3, val2: 4)
//        Veriycate the mock
        verify(mockValidNumber.check(3)).wasCalled()
        verify(mockValidNumber.check(4)).wasCalled()
        XCTAssertEqual(result, 7)
    }
    
    func test_Add2(){
        given(mockValidNumber.check(any())) ~> true
        var checkNumber: Bool = mockValidNumber.check(3)
        XCTAssertEqual(true, checkNumber)
        
        given(mockValidNumber.check(-3)) ~> false
        checkNumber = mockValidNumber.check(-3)
        XCTAssertEqual(false, checkNumber)
        
    }
    
    func test_Add3(){
        given(mockValidNumber.check(any())) ~> false
        let result = sut.add(-12, val2: -5)
        XCTAssertEqual(0, result)
    }
    
    func testAAAPattern(){
        //Arrange:
        given(mockValidNumber.check(3)) ~> true
        given(mockValidNumber.check(4)) ~> true
        //Act:
        let result = sut.add(3, val2: 4)
        //Assert
        XCTAssertEqual(7, result)
    }
    
    func testArgumentMatcher() {
        //Arrange:
        given(mockValidNumber.check(any())) ~> true
        //Act:
        let result = sut.add(3, val2: 4)
        //Assert
        XCTAssertEqual(7, result)
        
    }
    
//    MARK: - Test function that has not return
    func test_AddPrint_ShowMessageWasCalled_ShowErrorNeverCalled(){
        //Arrange:
        given(mockValidNumber.check(any())) ~> true
        //Act:
        sut.addPrint(a: 3, b: 3)
        //Assert
        verify(mockValidNumber.check(3)).wasCalled(exactly(2))
        verify(mockPrint.showMessage(6)).wasCalled()
        verify(mockPrint.showError()).wasNeverCalled()
    }
    
    func test_AddPrint_ShowErrorWasCalled_ShowMessageNeverCalled(){
        //Arrange:
        given(mockValidNumber.check(any())) ~> false
        //Act:
        sut.addPrint(a: -7, b: -5)
        //Assert
        verify(mockPrint.showMessage(-12)).wasNeverCalled()
        verify(mockPrint.showError()).wasCalled()
    }
    
}
