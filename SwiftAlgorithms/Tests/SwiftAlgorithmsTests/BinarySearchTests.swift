//
//  BinarySearchTests.swift
//  SwiftAlgorithms
//
//  Created by Saurabh Verma on 26/04/24.
//

import XCTest
@testable import SwiftAlgorithms

final class BinarySearchTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_binarySearch_success_1() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let index = BinarySearch.searchFor(value: 2, in: array)
        XCTAssertEqual(1, index)
    }
    
    func test_binarySearch_success_2() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let index = BinarySearch.searchFor(value: 8, in: array)
        XCTAssertEqual(7, index)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
