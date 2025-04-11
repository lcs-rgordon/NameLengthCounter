//
//  Functions.swift
//  NameLengthCounter
//
//  Created by Russell Gordon on 2025-04-11.
//

import Foundation

func lengthOfName(
    name: String
) -> Int {
    
    // 1. Create a variable to keep track of how many letters there are
    var countOfLetters = 0
    
    // 2. Iterate over the input given and count the letters
    for letter in name {
        countOfLetters = countOfLetters + 1
    }
    
    // 3. Return the count of letters
    return countOfLetters
    
}
