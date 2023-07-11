//
//  UIViewController+Keyboard+Extention.swift
//  CertificationDemo
//
//  Created by XP India on 10/07/23.
//

import UIKit

// MARK: - KeyboardHandler

extension UIViewController {
    
    func initializeHideKeyboard() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self,action: #selector(dismissMyKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissMyKeyboard() {
        view.endEditing(true)
    }
}
