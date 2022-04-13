//
//  UIButton+.swift
//  Outstagram
//
//  Created by 정은경 on 2022/04/13.
//

import UIKit

extension UIButton {
    func setImage(systemName: String) {
        contentHorizontalAlignment = .fill
        contentVerticalAlignment = .fill
        
        imageView?.contentMode = .scaleAspectFit
        UIButton().configuration?.contentInsets = .zero
        
        setImage(UIImage(systemName: systemName), for: .normal)
    }
}
