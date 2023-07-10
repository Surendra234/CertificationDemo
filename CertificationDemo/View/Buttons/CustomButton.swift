//
//  CustomButton.swift
//  CertificationDemo
//
//  Created by Surendra Mahawar on 07/07/23.
//

import UIKit

class CustomButton: UIButton {

    // MARK: - initilizer
    init(title: String, size: CGFloat, cornerRadius: CGFloat, backgroundColor: UIColor, tintColor: UIColor, titleColor: UIColor? = .black) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor ?? .black, for: .normal)
        self.titleLabel?.font = UIFont.init(name: "Avenir Next", size: size)
        self.clipsToBounds = true
        self.layer.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.tintColor = tintColor
        self.titleLabel?.numberOfLines = 0
        self.titleLabel?.lineBreakMode = .byWordWrapping
    }
  
    // MARK: - required initilizer
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
