//
//  UIStackView+Extention.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

import UIKit

extension UIStackView {
    func configureHStack() {
        self.axis = .horizontal
        self.spacing = 10
        self.alignment = .leading
    }
    
    func configureVStack() {
        self.axis = .vertical
        self.spacing = 10
        self.alignment = .leading
    }
} 
