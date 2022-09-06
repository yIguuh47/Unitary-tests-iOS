//
//  StringUtilsSpec.swift
//  TestUnitTests
//
//  Created by Virtual Machine on 20/08/22.
//

import XCTest
@testable import TestUnit
class StringUtilsSpec: XCTestCase {

    func testIsValidEmail() {
        let email = "curso"
        let value = email.isValidEmail()
        
        XCTAssertFalse(value, "Não é um emal Valido")
    }

    func testRemoveWhiteSpace() {
        let text = "Olá mundo"
        let newText = text.removeWhitespace()
        
        XCTAssert(newText == "Olámundo", "Não foi Removido" )
    }

    func testReplace() {
        let test = "Swift"
        let replaceTest = test.replace(string: "w", replacement: "h")
        
        XCTAssert(replaceTest == "Shift")
    }
    
}
