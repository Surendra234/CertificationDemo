//
//  CustomImageView.swift
//  CertificationDemo
//
//  Created by Surendra Mahawar on 07/07/23.
//

import UIKit

class CustomImageView: UIImageView {

    // MARK: - initilizer
    init(name: String, color: UIColor? = nil) {
        super.init(frame: .zero)
        self.image = UIImage(named: name)?.withRenderingMode(.alwaysOriginal)
        self.contentMode = .scaleAspectFit
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
