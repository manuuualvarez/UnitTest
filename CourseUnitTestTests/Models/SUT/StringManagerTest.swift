//
//  StringManagerTest.swift
//  CourseUnitTestTests
//
//  Created by Manuel Alvarez on 5/2/21.
//

import Foundation
import XCTest
@testable import CourseUnitTest

class StringManagerTest: XCTestCase {
    
    var sut : StringManager!
    
    override func setUp() {
        sut = StringManager()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    func test_MessageToUppercase_FromLower_ToUpper(){
        // Arrange:
        let expected = "MANUEL"
        // Act
        let result = sut.messageToUppercase("maNuel")
        // Assert
        XCTAssertEqual(expected, result)
    }
    
    func test_MessageToLowercase_FromUpper_ToLower(){
        // Arrange:
        let expected = "ignacio"
        // Act
        let result = sut.messageToLowercase("IGNaCIO")
        // Assert:
        XCTAssertEqual(expected, result)
    }
    
    
    
}
