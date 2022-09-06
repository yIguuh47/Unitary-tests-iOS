//
//  StringUtilsTests.swift
//  TestUnitTests
//
//  Created by Virtual Machine on 22/08/22.
//

import Quick
import Nimble
@testable import TestUnit

class StringUtilsTests: QuickSpec {
    
    override func spec() {
        describe("StringUtils") {
            context("Is valid Email") {
                it("Valid Email") {
                    let email = "curso@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beTrue())
                }
                
                it("Invalid Email") {
                    let email = "curso"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beFalse())
                }
            }
        }
    }
    
}
