//
//  CalculatorLogicTests.swift
//  CalculatorTests
//
//  Created by Herbert Dodge on 7/16/21.
//

import XCTest
@testable import Calculator

class CalculatorLogicTests: XCTestCase {
    
    var sut: CalculatorLogic!

    // sut = System Under Test
    
    override func setUp() {
        super.setUp()
        sut = CalculatorLogic()
    }

    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testAddition() {
        sut.number = 1
        sut.intermediateCalculation = (3, "+")
        
        XCTAssert(sut.calculate(symbol: "=") == 4)
    }
    
    func testSubtraction() {
        sut.number = 1
        sut.intermediateCalculation = (4, "-")
        
        XCTAssert(sut.calculate(symbol: "=") == 3)
    }
    
    func testMultiplication() {
        sut.number = 5
        sut.intermediateCalculation = (4, "×")
        
        XCTAssert(sut.calculate(symbol: "=") == 20)
    }
    
    func testDivision() {
        sut.number = 5
        sut.intermediateCalculation = (20, "÷")
        
        XCTAssert(sut.calculate(symbol: "=") == 4)
    }
    
    func testDivsion_WithRemainder() {
        sut.number = 6
        sut.intermediateCalculation = (21, "÷")
        
        XCTAssert(sut.calculate(symbol: "=") == 3.5)
    }
    
    func testPercentConversion() {
        sut.number = 60
        
        XCTAssert(sut.calculate(symbol: "%") == 0.6)
    }
    
    func testConvertNumber_PositiveOrNegative() {
        sut.number = 56248
        
        XCTAssert(sut.calculate(symbol: "+/-") == -56248)
    }
    
    func testDecimalSupport() {
        sut.number = 5.5
        sut.intermediateCalculation = (3.7, "+")
        
        XCTAssert(sut.calculate(symbol: "=") == 9.2)
    }

}



