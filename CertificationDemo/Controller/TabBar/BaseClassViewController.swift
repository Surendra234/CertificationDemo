//
//  BaseClassViewController.swift
//  CertificationDemo
//
//  Created by Surendra Mahawar on 07/07/23.
//

import UIKit
import SideMenu

class BaseClassViewController: UIViewController {
    
    // MARK: - Properties
    private var sideMenu : SideMenuNavigationController?
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureUI()
        configureSideMenu()
    }
    
    // MARK: - Selector
    @objc private func handleMenuButton() {
        guard let sideMenu = sideMenu else { return}
        present(sideMenu, animated: true)
    }
    
    
    // MARK: - Helpers
    private func configureUI() {
        self.view.backgroundColor = .white
        self.tabBarItem.title = ""
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor.white.withAlphaComponent(0.5)

        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance

        navigationItem.leftBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "line.3.horizontal"), style: .done, target: self, action: #selector(handleMenuButton))
    }
    
    private func configureSideMenu() {
        let menu = SideMenuTableViewController(with: ["Profile", "Search", "Like", "Setting", "Logout"])
        menu.delegate = self
        sideMenu = SideMenuNavigationController(rootViewController: menu)
        sideMenu?.leftSide = true

        SideMenuManager.default.leftMenuNavigationController = sideMenu
        SideMenuManager.default.addPanGestureToPresent(toView: view)
    }
}

// MARK: - MenuControllerDelegate
extension BaseClassViewController: MenuControllerDelegate {
    func didSelectenuItem(name: String) {
        self.dismiss(animated: true)
        
        switch name {
        case "Logout":
            self.dismiss(animated: true)
            
        case "Profile":
            tabBarController?.selectedIndex = 3
            
        case "Search":
            tabBarController?.selectedIndex = 1
            
        case "Like":
            tabBarController?.selectedIndex = 2
            
        default :
            break
        }
    }
}
