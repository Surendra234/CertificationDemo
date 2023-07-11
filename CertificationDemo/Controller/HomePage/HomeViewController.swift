//
//  HomeViewController.swift
//  CertificationDemo
//
//  Created by Surendra Mahawar on 07/07/23.
//

import UIKit

class HomeViewController: BaseClassViewController {
    
    // MARK: - Properties
    private var homeTable: UITableView = UITableView()
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configreUI()
    }
    
    // MARK: - Helpers
    private func configreUI() {
        self.navigationItem.title = "Home"
        view.addSubview(homeTable)
        homeTable.anchor(top: view.safeAreaLayoutGuide.topAnchor, left: view.leftAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingLeft: 10, paddingRight: 10)
        
        homeTable.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifire)
        homeTable.separatorStyle = .none
        homeTable.estimatedRowHeight = UITableView.automaticDimension
        homeTable.dataSource = self
        homeTable.delegate = self
    }
}

// MARK: - UITableViewDataSource, UITableViewDataSource
extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifire, for: indexPath) as? HomeTableViewCell else { return
            UITableViewCell()
        }
        cell.selectionStyle = .none
        cell.firstNameData.text = "Surendra"
        cell.lastNameData.text = "Mahawar"
        cell.contactNoData.text = "923456783"
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
