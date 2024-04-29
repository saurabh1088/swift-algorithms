//
//  BinarySearchTests.swift
//  SwiftAlgorithms
//
//  Created by Saurabh Verma on 26/04/24.
//

import XCTest
@testable import SwiftAlgorithms

final class BinarySearchTests: XCTestCase {
    
    private let intArray = [1, 
                            2,
                            3,
                            4,
                            5,
                            6,
                            7,
                            8,
                            9,
                            10]
    private let stringArray = ["A", 
                               "B",
                               "C",
                               "D",
                               "E", 
                               "F",
                               "G",
                               "H", 
                               "I",
                               "J",
                               "K",
                               "L",
                               "M",
                               "N",
                               "O",
                               "P",
                               "Q",
                               "R",
                               "S",
                               "T",
                               "U",
                               "V",
                               "W",
                               "X",
                               "Y",
                               "Z"]

    // MARK: -----------------------------------------------------------------------
    // MARK: Binary search tests for Int data type
    func test_binarySearchInt_success_1() {
        let index = BinarySearch.searchFor(value: 2, in: intArray)
        XCTAssertEqual(1, index)
    }
    
    func test_binarySearchInt_success_2() {
        let index = BinarySearch.searchFor(value: 8, in: intArray)
        XCTAssertEqual(7, index)
    }
    
    func test_binarySearchInt_fail() {
        let index = BinarySearch.searchFor(value: 0, in: intArray)
        XCTAssertNil(index)
    }
    
    func test_binarySearchInt_hugeDataSet() {
        let arraySize = 10000
        let array = (0..<arraySize).map { $0 }
        let index = BinarySearch.searchFor(value: 999, in: array)
        XCTAssertEqual(999, index)
    }
    
    func test_binarySearchRecursiveInt_success_1() {
        let index = BinarySearch.searchRecursivelyFor(value: 1, in: intArray)
        XCTAssertEqual(0, index)
    }
    
    func test_binarySearchRecursiveInt_success_2() {
        let index = BinarySearch.searchRecursivelyFor(value: 9, in: intArray)
        XCTAssertEqual(8, index)
    }
    
    func test_binarySearchRecursiveInt_fail() {
        let index = BinarySearch.searchRecursivelyFor(value: 0, in: intArray)
        XCTAssertNil(index)
    }
    
    // MARK: -----------------------------------------------------------------------
    // MARK: Binary search tests for String data type
    func test_binarySearchString_success_1() {
        let index = BinarySearch.searchFor(value: "C", in: stringArray)
        XCTAssertEqual(2, index)
    }
    
    func test_binarySearchString_success_2() {
        let index = BinarySearch.searchFor(value: "X", in: stringArray)
        XCTAssertEqual(23, index)
    }
    
//    func test_binarySearchString_fail() {
//        let index = BinarySearch.searchFor(value: "QW", in: stringArray)
//        XCTAssertNil(index)
//    }
    
    func test_binarySearchRecursiveString_success_1() {
        let index = BinarySearch.searchRecursivelyFor(value: "C", in: stringArray)
        XCTAssertEqual(2, index)
    }
    
    func test_binarySearchRecursiveString_success_2() {
        let index = BinarySearch.searchRecursivelyFor(value: "X", in: stringArray)
        XCTAssertEqual(23, index)
    }
    
//    func test_binarySearchRecursiveString_fail() {
//        let index = BinarySearch.searchRecursivelyFor(value: "0", in: stringArray)
//        XCTAssertNil(index)
//    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            let arraySize = 10000
            let array = (0..<arraySize).map { $0 }
            _ = BinarySearch.searchFor(value: 999, in: array)
        }
    }

}
