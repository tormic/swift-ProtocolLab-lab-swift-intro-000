//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

//protocol named ProvideAcces
protocol ProvideAccess {
    
    //define header for function but nothing else
    func allowEntryWithPassword(password: [Int]) ->Bool
}

extension BankVault {
    func allowEntryWithPassword(password: [Int]) -> Bool {
        var allow = false
        if (password.count == 0 || password.count > 10) {
            return allow
            } else {
            allow = true
            for digit in password {
                if (digit % 2 != 0) {
                    allow = false
                }
            }
        return allow
        }
    }
}

/*

 (2) - In the BankVault.swift file, below where you created the ProvideAccess protocol - create an extension on the BankVault class. In that extension, it should conform to the ProvideAccess protocol. In your implementation of the allowEntryWithPassword(_:) function, you should adhere to the following rules:
 If the person calling on this function doesn't enter in any digits (empty array), then we should return false.
 If the total numbers of digits entered (items in the array) exceed 10, then we should return false.
 In order to allow access (return true), every other digit (starting with the first digit) must be even. The first digit entered is the first element in the array.
 There are tests in the BankVaultTests.swift file. Press command + u to run these tests to make sure you implemented the allowEntryWithPassword(_:) function correctly.
 */

