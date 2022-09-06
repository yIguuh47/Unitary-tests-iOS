//
//  AccountViewController.swift
//  TestUnit
//
//  Created by Virtual Machine on 22/08/22.
//

import UIKit

class AccountViewController: UIViewController {

    var viewModel: AccountViewModelProtocol?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewModel?.showldRequestLocation(showAlert: {
            print("Alerta")
        }, askUserPermission: {
            print("Logalização de usuario Pega")
        }, completion: {
            print("Completo")
        })
    }
    
    
    @IBAction func loginButtonAction(_ sender: Any) {
        viewModel?.loginButtonTap()
    }
    
}
