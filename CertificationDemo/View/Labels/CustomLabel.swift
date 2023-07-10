//
//  CustomLabel.swift
//  CertificationDemo
//
//  Created by Surendra Mahawar on 07/07/23.
//

import UIKit

class CustomLabel: UILabel {
    
    // MARK: - initlilzer
    init(text: String? = nil, size: CGFloat? = 14, alignment: NSTextAlignment? = .left) {
        super.init(frame: .zero)
        
        self.text = text ?? ""
        self.textAlignment = alignment ?? .left
        self.numberOfLines = 0
        self.lineBreakMode = .byWordWrapping
        self.font = UIFont.init(name: "Avenir Next", size: size ?? 14)
    }
    
    // MARK: - required initlilzer
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
