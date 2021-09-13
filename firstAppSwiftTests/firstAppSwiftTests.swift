//
//  firstAppSwiftTests.swift
//  firstAppSwiftTests
//
//  Created by Esteban Higuita on 11/08/21.
//

import XCTest
@testable import firstAppSwift

class firstAppSwiftTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        let result = CalculatorOwn().sum(valueOne: 2, valueTwo: 2)
        XCTAssert(result == 4)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
