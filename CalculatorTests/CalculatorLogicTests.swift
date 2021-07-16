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
        var calcLogic = CalculatorLogic()
        calcLogic.number = 1
        calcLogic.intermediateCalculation = (3, "+")
        
        let addtionResult = calcLogic.calculate(symbol: "=")
        
        XCTAssert(addtionResult == 4)
    }
    
    func testSubtraction() {
        var calcLogic = CalculatorLogic()
        calcLogic.number = 1
        calcLogic.intermediateCalculation = (4, "-")
        
        let subtractionResult = calcLogic.calculate(symbol: "=")
        
        XCTAssert(subtractionResult == 3)
    }
    
    func testMultiplication() {
        var calcLogic = CalculatorLogic()
        calcLogic.number = 5
        calcLogic.intermediateCalculation = (4, "×")
        
        let multiplicationResult = calcLogic.calculate(symbol: "=")
        
        XCTAssert(multiplicationResult == 20)
    }
    
    func testDivision() {
        var calcLogic = CalculatorLogic()
        calcLogic.number = 5
        calcLogic.intermediateCalculation = (20, "÷")
        
        let divisionResult = calcLogic.calculate(symbol: "=")
        
        XCTAssert(divisionResult == 4)
    }
    
    func testDivsion_WithRemainder() {
        var calcLogic = CalculatorLogic()
        calcLogic.number = 6
        calcLogic.intermediateCalculation = (21, "÷")
        
        let remainderResult = calcLogic.calculate(symbol: "=")
        
        XCTAssert(remainderResult == 3.5)
    }
    
    func testPercentConversion() {
        var calcLogic = CalculatorLogic()
        calcLogic.number = 60
        
        let percentResult = calcLogic.calculate(symbol: "%")
        
        XCTAssert(percentResult == 0.6)
    }
    
    func testConvertNumber_PositiveOrNegative() {
        var calcLogic = CalculatorLogic()
        calcLogic.number = 56248
        
        let flippedNumber = calcLogic.calculate(symbol: "+/-")
        
        XCTAssert(flippedNumber == -56248)
    }

}



