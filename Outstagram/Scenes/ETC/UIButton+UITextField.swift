//
//  UIButton+UITextField.swift
//  Outstagram
//
//  Created by 정은경 on 2022/04/15.
//

import SnapKit
import UIKit

let button = UIButton()

extension UITextField {

    func enablePasswordToggle(){
        button.setImage(UIImage(systemName: "eye.slash"), for: .normal)
        button.setImage(UIImage(systemName: "eye"), for: .selected)
        button.imageView?.tintColor = .secondaryLabel
        
        button.addTarget(self, action: #selector(TogglePasswordView), for: .touchUpInside)
        
        rightView = button
        rightViewMode = .always
    }
    
    @objc func TogglePasswordView(){
        isSecureTextEntry.toggle()
        button.isSelected.toggle()
    }
}
