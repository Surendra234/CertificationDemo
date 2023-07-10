//
//  UITabelViewCell+Extention.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

import UIKit

extension UITableViewCell {
    func configureStack(first: UIView, second: UIView, type: Bool? = false) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: [first, second])
        (type ?? false) ? stack.configureVStack() : stack.configureHStack()
        return stack
    }
}
