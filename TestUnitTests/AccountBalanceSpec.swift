//
//  AccountBalanceSpec.swift
//  TestUnitTests
//
//  Created by Virtual Machine on 20/08/22.
//

import XCTest
@testable import TestUnit

class AccountBalanceSpec: XCTestCase {

    var account: AccountBalance?
    
    func testDetSpecialBalance100() {
        account = AccountBalance(balance: 99)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 109, "O Saldo menor que 100, deve retornar o saldo + 10")
    }
    
    func testDetSpecialBalance900() {
        account = AccountBalance(balance: 900)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 1900, "O Saldo maior que 500, deve retornar o saldo + 1000")
        
        XCTAssertGreaterThan(specialBalance ?? 0, (account?.balance ?? 0))
    }

    func testDetSpecialBalance400() {
        account = AccountBalance(balance: 400)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 400, "O Saldo menor que 500 e maior que 100, deve retornar o saldo")
    }
    
}
