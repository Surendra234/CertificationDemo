//
//  CustomTextField.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

import UIKit

class CustomTextField: UITextField {
    
    // MARK: - initlizer
    init(placeholder: String, isSecureTextEntry: Bool? = false) {
        super.init(frame: .zero)
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureTextEntry ?? false
    }
    
    // MARK: - required initilizer
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
