//
//  Ships.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


enum Direction: String {
    case north, south, east, west
}

protocol Steerability {
    var direction: Direction {
        get set //gettable and settable
    }
    mutating func steerInDirection(direction: Direction) //mutating since it might be a struct
}

extension Steerability {
    mutating func steerInDirection(direction: Direction) {
        self.direction = direction //object calling on the function's direction will be set to direction called with
    }
}

class SailBoat: Steerability {
    var direction: Direction = .north //usually have to provide an initializer, but not in this case since all properties are set to an actual value
}

class rowBoat: Steerability {
    var direction: Direction = .north
}



