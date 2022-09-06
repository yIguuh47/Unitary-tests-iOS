//
//  AccountViewModel.swift
//  TestUnit
//
//  Created by Virtual Machine on 22/08/22.
//

import Foundation
import UIKit

protocol AccountViewModelProtocol {
    func loginButtonTap()
    func showldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ())
}

class AccountViewModel: AccountViewModelProtocol {
    
    private let showldUseLocation: Bool
    
    init(showldUseLocation: Bool) {
        self.showldUseLocation = showldUseLocation
    }
    
    func loginButtonTap() {
        print("Login Realizado com Sucesso")
    }
    
    func showldRequestLocation(showAlert: () -> (),
                               askUserPermission: () -> (),
                               completion: () -> ()) {
        if showldUseLocation {
            askUserPermission()
            completion()
            return
        }
        showAlert()
        completion()
    }
}
