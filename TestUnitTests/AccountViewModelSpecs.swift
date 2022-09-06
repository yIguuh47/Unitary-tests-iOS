//
//  AccountViewModelSpecs.swift
//  TestUnitTests
//
//  Created by Virtual Machine on 22/08/22.
//

import Quick
import Nimble
@testable import TestUnit

class AccountViewModelSpecs: QuickSpec {
    
    override func spec() {
        describe("AccountViewModel") {
            
            var sut: AccountViewModel!
            
            context("Show Request Location") {
                var showAlert: Bool!
                var askUserPermission: Bool!
                var completion: Bool!
                
                beforeEach {
                    showAlert = false
                    askUserPermission = false
                    completion = false
                }
                
                it("Use Location Treu") {
                    sut = AccountViewModel(showldUseLocation: true)
                    
                    sut.showldRequestLocation(showAlert: {
                        showAlert = true
                    }, askUserPermission: {
                        askUserPermission = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showAlert).to(equal(false))
                    expect(askUserPermission).to(equal(true))
                    expect(completion).to(equal(true))
                }
                
                it("Use Location False") {
                    sut = AccountViewModel(showldUseLocation: false)
                    
                    sut.showldRequestLocation(showAlert: {
                        showAlert = true
                    }, askUserPermission: {
                        askUserPermission = true
                    }, completion: {
                        completion = true
                    })
                    
                    expect(showAlert).to(equal(true))
                    expect(askUserPermission).to(equal(false))
                    expect(completion).to(equal(true))
                }
            }
            context("AccountViewModelProtocol") {
                it("Verify AccountViewModelProtocol") {
                    sut = AccountViewModel(showldUseLocation: false)
                    expect(sut).to(beAKindOf(AccountViewModelProtocol.self))
                }
            }
        }
    }
    
}
