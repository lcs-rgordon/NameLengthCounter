//
//  NameInfo.swift
//  NameLengthCounter
//
//  Created by Russell Gordon on 2025-04-11.
//

import Foundation

struct NameInfo: Identifiable {
    
    let id = UUID()
    let name: String
    let countOfLetters: Int
    
}
