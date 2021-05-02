//
//  ValidNumberTest.swift
//  CourseUnitTestTests
//
//  Created by Manuel Alvarez on 5/2/21.
//

import Foundation
import XCTest

@testable import CourseUnitTest

class ValidNumberTest: XCTestCase {
    
    var sut : ValidNumber!
    
    override func setUp() {
        sut = ValidNumber()
    }
    
    override func tearDown() {
        sut = nil
    }
    
    
    func test_check() {
        XCTAssertEqual(true,sut.check(8))
    }
    
    func test_check_Negative() {
        XCTAssertEqual(false,sut.check(-8))
    }
    
    func test_check_GreterTahn10() {
        XCTAssertEqual(false,sut.check(18))
    }
    
    
}
