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
}
