//
//  BinarySearchTests.swift
//  SwiftAlgorithms
//
//  Created by Saurabh Verma on 26/04/24.
//

import XCTest
@testable import SwiftAlgorithms

final class BinarySearchTests: XCTestCase {

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
    
    func test_binarySearch_fail() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let index = BinarySearch.searchFor(value: 0, in: array)
        XCTAssertNil(index)
    }
    
    func test_binarySearch_hugeDataSet() {
        let arraySize = 10000
        let array = (0..<arraySize).map { $0 }
        let index = BinarySearch.searchFor(value: 999, in: array)
        XCTAssertEqual(999, index)
    }
    
    func test_binarySearchRecursive_success_1() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let index = BinarySearch.searchRecursivelyFor(value: 1, in: array)
        XCTAssertEqual(0, index)
    }
    
    func test_binarySearchRecursive_success_2() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let index = BinarySearch.searchRecursivelyFor(value: 9, in: array)
        XCTAssertEqual(8, index)
    }
    
    func test_binarySearchRecursive_fail() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let index = BinarySearch.searchRecursivelyFor(value: 0, in: array)
        XCTAssertNil(index)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            let arraySize = 10000
            let array = (0..<arraySize).map { $0 }
            _ = BinarySearch.searchFor(value: 999, in: array)
        }
    }

}
