//
//  File.swift
//  
//
//  Created by Henry Hathaway on 9/25/19.
//

public extension RandomAccessCollection {
    func atOffset(_ offset:Int) -> Element {
        let idx = index(startIndex, offsetBy: offset)
        return self[idx]
    }
    var offsets: Range<Int> {
        return 0..<count
    }
}

public extension RandomAccessCollection where Self: MutableCollection {
    mutating func set(_ e:Element, atOffset offset:Int) {
        let idx = index(startIndex, offsetBy: offset)
        self[idx] = e
    }
}

