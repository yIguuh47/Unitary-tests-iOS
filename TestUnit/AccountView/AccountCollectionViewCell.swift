//
//  AccountCollectionViewCell.swift
//  TestUnit
//
//  Created by Virtual Machine on 22/08/22.
//

import UIKit

class AccountCollectionViewCell: UICollectionViewCell {

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
    
    

}
