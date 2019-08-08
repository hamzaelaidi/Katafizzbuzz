//
//  FizzBuzz.swift
//
//
//  Created by Hamza EL AIDI on 15/07/2019.
//

import Foundation

class FizzBuzz {
    
    enum CustomError: Error {
        case validNumberException(String)
    }
    
    let config = [3 : "Fizz", 5 : "Buzz"]
    
    func convert(input: Int) throws -> String {
        if input < 1 || input > 100 {
            throw CustomError.validNumberException("numéro n'est pas valide")
        }
        var converted = ""
        for (key, value) in config {
            if input % key == 0 {
                converted = converted + value
            }
        }
        if converted == "" {
            return "\(input)"
        }
        return converted
    }
    
/*    func oldconvert(input: Int) throws -> String {
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
    }*/
    
    private func isMultipleOf3(number: Int) -> Bool {
        return number % 3 == 0
    }
    
    private func isMultipleOf5(number: Int) -> Bool {
        return number % 5 == 0
    }
    
}
