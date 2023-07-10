//
//  HomeTableViewCell.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    // MARK: - Cell Identifire
    static var identifire = "HomeTableViewCell"
    
    // MARK: - Properties
    
    /// configure view on cell
    private let customCellView: UIView = CustomCellView()
    
    /// configure title label
    private let firstNameTitle: UILabel = CustomLabel(text: "First Name : ")
    private let lastNameTitle: UILabel = CustomLabel(text: "Last Name : ")
    private let contactNoTitle: UILabel = CustomLabel(text: "Contact no :")
    
    /// configure data label
    let firstNameData = CustomLabel()
    let lastNameData = CustomLabel()
    let contactNoData = CustomLabel()
    
    // MARK: - Initilizer
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        configureUI()
    }
    
    // MARK: - Required Initilizer
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - helpers
    private func configureUI() {
        self.contentView.addSubview(customCellView)
        customCellView.anchor(top: self.contentView.topAnchor, left: self.contentView.leftAnchor, bottom: self.contentView.bottomAnchor, right: self.contentView.rightAnchor, paddingTop: 15, paddingBottom: 5)
        
        let firstHSatck = configureStack(first: firstNameTitle, second: firstNameData)
        let lastHStack = configureStack(first: lastNameTitle, second: lastNameData)
        let contactNoHStack = configureStack(first: contactNoTitle, second: contactNoData)
        
        let finalVStack = UIStackView(arrangedSubviews: [firstHSatck, lastHStack, contactNoHStack])
        finalVStack.configureVStack()
        
        customCellView.addSubview(finalVStack)
        finalVStack.anchor(top: customCellView.topAnchor, left: customCellView.leftAnchor, bottom: customCellView.bottomAnchor, right: customCellView.rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 10, paddingRight: 10)
    }
}
