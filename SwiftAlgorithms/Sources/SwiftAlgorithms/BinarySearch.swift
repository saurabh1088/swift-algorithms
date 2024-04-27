//
//  BinarySearch.swift
//
//
//  Created by Saurabh Verma on 25/04/24.
//

import Foundation

public struct BinarySearch {
    
    public static func searchFor(value: Int, in array: [Int]) -> Int? {
        var startIndex = array.startIndex
        var endIndex = array.endIndex
        
        while startIndex < endIndex {
            let middleIndex = startIndex + (endIndex - startIndex) / 2
            if value == array[middleIndex] {
                return middleIndex
            } else if value > array[middleIndex] {
                startIndex = middleIndex
            } else {
                endIndex = middleIndex
            }
        }
        return nil
    }
    
    public static func searchRecursivelyFor(value: Int, in array: [Int]) -> Int? {
        let range = array.startIndex ..< array.endIndex
        return searchRecursivelyFor(value: value, in: array, range: range)
    }
    
    private static func searchRecursivelyFor(value: Int, in array: [Int], range: Range<Int>) -> Int? {
        var startIndex = range.lowerBound
        var endIndex = range.upperBound
        
        guard startIndex < endIndex else { return nil }
        
        let middleIndex = startIndex + (endIndex - startIndex) / 2
        
        if value == array[middleIndex] {
            return middleIndex
        } else if value > array[middleIndex] {
            startIndex = middleIndex
            let newRange = startIndex ..< endIndex
            return searchRecursivelyFor(value: value, in: array, range: newRange)
        } else {
            endIndex = middleIndex
            let newRange = startIndex ..< endIndex
            return searchRecursivelyFor(value: value, in: array, range: newRange)
        }
    }
}
