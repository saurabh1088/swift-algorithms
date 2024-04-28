//
//  BinarySearch.swift
//
//
//  Created by Saurabh Verma on 25/04/24.
//

import Foundation

public struct BinarySearch {
    
    public static func searchFor<T: Comparable>(value: T, in array: [T]) -> Int? {
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
    
    public static func searchRecursivelyFor<T: Comparable>(value: T, in array: [T]) -> Int? {
        let range = array.startIndex ..< array.endIndex
        return searchRecursivelyFor(value: value, in: array, range: range)
    }
}

// MARK: -----------------------------------------------------------------------
// MARK: Extension private members
extension BinarySearch {
    private static func searchRecursivelyFor<T: Comparable>(value: T, in array: [T], range: Range<Int>) -> Int? {
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
