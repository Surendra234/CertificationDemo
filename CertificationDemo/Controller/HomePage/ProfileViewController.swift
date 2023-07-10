//
//  ProfileViewController.swift
//  CertificationDemo
//
//  Created by XP India on 07/07/23.
//

/* Description: - Each tabbar action show the new screen and all the screen show on the tabbar action
                  we need the same UI of navigation bar. */

import UIKit

class ProfileViewController: BaseClassViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.title = "Profile"
        self.view.backgroundColor = .systemRed
    }
}
