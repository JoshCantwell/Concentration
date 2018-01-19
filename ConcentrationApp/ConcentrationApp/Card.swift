//
//  Card.swift
//  ConcentrationApp
//
//  Created by Josh Cantwell on 1/11/18.
//  Copyright © 2018 Josh Cantwell. All rights reserved.
//

import Foundation

struct Card: Hashable {
    
    var hashValue: Int { return identifier}
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var identifierFactory = 0
    
    private static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return Card.identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
    
}
