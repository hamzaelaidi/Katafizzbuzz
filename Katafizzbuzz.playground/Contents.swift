import UIKit
import XCTest

class FizzBuzz {
    func count() {
        for i in 1...100 {
            print(fizzBuzz(number: i))
        }
    }
    
    func fizzBuzz(number: Int) -> String {
        if number.isMultiple(of: 3) && number.isMultiple(of: 5) {
            return "fizzbuzz"
        } else if number.isMultiple(of: 3) {
            return "fizz"
        } else if number.isMultiple(of: 5) {
            return "buzz"
        }
        return "\(number)"
    }
}

class FizzBuzzTest: XCTestCase {
    let fizzBuzz = FizzBuzz()
    override func setUp() {
        testBuzz()
        testFizz()
        testFizzBuzz()
    }
    
    func testFizz() {
        XCTAssertEqual(fizzBuzz.fizzBuzz(number: 3), "fizz")
    }
    
    func testBuzz() {
        XCTAssertEqual(fizzBuzz.fizzBuzz(number: 5), "buzz")
    }
    
    func testFizzBuzz() {
        XCTAssertEqual(fizzBuzz.fizzBuzz(number: 15), "fizzbuzz")
    }
}

let test = FizzBuzzTest()
test.run()
