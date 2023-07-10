//
//  SystemImageView.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

import UIKit

class SystemImageView: UIImageView {
    
    // MARK: - initilizer
    init(name: String, color: UIColor) {
        super.init(frame: .zero)

        self.image = UIImage(systemName: name)
        self.contentMode = .scaleAspectFit
        self.tintColor = color.withAlphaComponent(0.6)
    }
    
    // MARK: - required initilizer
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
