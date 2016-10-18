//
//  MutableCollection+EXT.swift
//  TacoPOP
//
//  Created by Ambar Maqsood on 2016-10-18.
//  Copyright © 2016 Ambar Maqsood. All rights reserved.
//

import Foundation

extension MutableCollection where Index == Int {
    mutating func shuffle() {
        if count < 2 {return}
        
        for i in startIndex..<endIndex - 1 {
            let j = Int(arc4random_uniform(UInt32(UInt16(endIndex-i)))) + i
            guard i != j else { continue }
            swap(&self[i], &self[j])
        }
    }
}
