//
//  FizzBuzz.swift
//  Kata-FizzBuzz
//
//  Created by Hamza EL AIDI on 18/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import Foundation

class FizzBuzz {
    
    enum CustomError: Error {
        case validNumberException(String)
    }
    
    func convert(input: Int) throws -> String {
        if input < 1 || input > 100 {
            throw CustomError.validNumberException("numéro n'est pas valide")
        }
        
        if isMultipleOf3(number: input) && isMultipleOf5(number: input) {
            return "FizzBuzz"
        } else if isMultipleOf3(number: input) {
            return "Fizz"
        } else if isMultipleOf5(number: input) {
            return "Buzz"
        }
        return "\(input)"
    }
    
    private func isMultipleOf3(number: Int) -> Bool {
        return number % 3 == 0
    }
    
    private func isMultipleOf5(number: Int) -> Bool {
        return number % 5 == 0
    }
}
