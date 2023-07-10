//
//  CustomCellView.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

import UIKit

class CustomCellView: UIView {
    
    // MARK: - Initilizer
    init() {
        super.init(frame: .zero)
        self.layer.cornerRadius = 16
        self.layer.backgroundColor = UIColor.systemGreen.withAlphaComponent(0.5).cgColor
        self.layer.shadowColor = UIColor.secondarySystemBackground.cgColor
        self.layer.shadowOpacity = 0.7
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 5
    }
    
    // MARK: - Required Initilizer
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
