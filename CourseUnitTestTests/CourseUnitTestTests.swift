//
//  CourseUnitTestTests.swift
//  CourseUnitTestTests
//
//  Created by Manuel Alvarez on 5/1/21.
//

import XCTest
@testable import CourseUnitTest

class CourseUnitTestTests: XCTestCase {
    
    
//    MARK: - Sirve para inicializar clases como querramos.
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

//    MARK: - Limpiamos las clases inicializadas, para que el próximo test inicie desde cero.
    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

//    MARK: - Esto es un ejemplo, toda funcion a testear deberia comenzar con test
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
//    MARK: - Para ver performance -> Retorna cuanto demoro en ejecutarse cada método.
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
