//
//  SideMenuTableViewController.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

protocol MenuControllerDelegate {
    func didSelectenuItem(name: String)
}

import UIKit

class SideMenuTableViewController: UITableViewController {
    
    // MARK: - Properties
    private let menuItems: [String]
    public var delegate : MenuControllerDelegate?
    
    // MARK: - Initlizer
    init(with menuItems: [String]) {
        self.menuItems = menuItems
        
        super.init(nibName: nil, bundle: nil)
        tableView.register(SideMenuOptionCell.self, forCellReuseIdentifier: "cell")
    }
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = UIColor.white
        self.title = "Side Menu"
        tableView.separatorStyle = .singleLine
    }
    
    // MARK: - Required Initilizer
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - DataSource and Delegate Method
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return menuItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? SideMenuOptionCell else { return
            UITableViewCell()
        }
        cell.menuModel = SideMenuModel(rawValue: indexPath.row)
        cell.tintColor = .white
        cell.selectionStyle = .default
        cell.backgroundColor = .clear
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedtem = menuItems[indexPath.row]
        delegate?.didSelectenuItem(name: selectedtem)
        print(selectedtem)
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return view.frame.height / 16
    }
}

