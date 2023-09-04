//
//  BottomViewController.swift
//  CafeApp
//
//  Created by Thierno Diallo on 8/28/23.
//

import UIKit

class BottomViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   

    let tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 30
        view.register(CoffeeTableViewCell.self, forCellReuseIdentifier: CoffeeTableViewCell.id)
        return view
    }()
    
    override func didMove(toParent parent: UIViewController?) {}


    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(tableView)
        
        tableView.dataSource = self
        tableView.delegate = self

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])

    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }

}
