//
//  Kata_FizzBuzzTests.swift
//  Kata-FizzBuzzTests
//
//  Created by Hamza EL AIDI on 18/09/2019.
//  Copyright © 2019 Hamza EL AIDI. All rights reserved.
//

import XCTest
@testable import Kata_FizzBuzz

class Kata_FizzBuzzTests: XCTestCase {

    let fizzBuzz = FizzBuzz()
    
    func test_should_return_input_when_input_is_not_multiple_of_3_and_5() {
        XCTAssertEqual(try fizzBuzz.convert(input: 1), "1")
        XCTAssertEqual(try fizzBuzz.convert(input: 2), "2")
        XCTAssertEqual(try fizzBuzz.convert(input: 4), "4")
        XCTAssertEqual(try fizzBuzz.convert(input: 7), "7")
    }
    
    func test_should_return_Fizz_when_input_is_multiple_of_3() {
        XCTAssertEqual(try fizzBuzz.convert(input: 3), "Fizz")
        XCTAssertEqual(try fizzBuzz.convert(input: 6), "Fizz")
        XCTAssertEqual(try fizzBuzz.convert(input: 9), "Fizz")
        XCTAssertEqual(try fizzBuzz.convert(input: 12), "Fizz")
    }
    
    func test_should_return_Buzz_when_input_is_multiple_of_5() {
        XCTAssertEqual(try fizzBuzz.convert(input: 5), "Buzz")
        XCTAssertEqual(try fizzBuzz.convert(input: 10), "Buzz")
        XCTAssertEqual(try fizzBuzz.convert(input: 20), "Buzz")
    }
    
    func test_should_return_FizzBuzz_when_input_is_multiple_of_3_and_5() {
        XCTAssertEqual(try fizzBuzz.convert(input: 15), "FizzBuzz")
        XCTAssertEqual(try fizzBuzz.convert(input: 30), "FizzBuzz")
        XCTAssertEqual(try fizzBuzz.convert(input: 45), "FizzBuzz")
        XCTAssertEqual(try fizzBuzz.convert(input: 60), "FizzBuzz")
    }
    
    func test_should_not_return_Buzz_when_input_is_multiple_of_3() {
        XCTAssertNotEqual(try fizzBuzz.convert(input: 9), "Buzz")
    }
    
    func test_should_not_return_Fizz_when_input_is_multiple_of_5() {
        XCTAssertNotEqual(try fizzBuzz.convert(input: 10), "Fizz")
    }
    
    func test_should_throw_exception_when_input_is_lower_than_1() {
        XCTAssertThrowsError(try fizzBuzz.convert(input: 0))
    }
    
    func test_should_throw_exception_when_input_is_greater_than_100() {
        XCTAssertThrowsError(try fizzBuzz.convert(input: 200))
    }

}
