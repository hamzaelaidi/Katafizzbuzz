import XCTest
@testable import FizzBuzzTests

//var tests = [XCTestCaseEntry]()
//tests += FizzBuzzTests.allTests()
//XCTMain(tests)
XCTMain([
    testCase(FizzBuzzTests.allTests),
    ])
