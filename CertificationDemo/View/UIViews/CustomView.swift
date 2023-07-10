//
//  CustomView.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

import UIKit

class CustomView: UIView {

    // MARK: -  initilizer
    init(imageView: UIImageView, textField: UITextField, cornerRadius: CGFloat? = 8, backgroundColor: UIColor? = .white, color: UIColor) {
        super.init(frame: .zero)
        
        self.backgroundColor = backgroundColor
        self.layer.borderColor = color.cgColor
        self.layer.cornerRadius = cornerRadius ?? 8
        self.layer.borderWidth = 1
        self.clipsToBounds = true
        
        self.addSubview(imageView)
        imageView.centerY(inView: self)
        imageView.anchor(left: self.leftAnchor, paddingLeft: 5)
        imageView.setDimensions(height: 24, width: 28)
        
        self.addSubview(textField)
        textField.anchor(top: self.topAnchor, left: imageView.rightAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, paddingTop: 5,paddingLeft: 10, paddingBottom: 5, paddingRight: 10)
    }
    
    // MARK: - required initilizer
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
