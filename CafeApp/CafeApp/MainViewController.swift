//
//  ViewController.swift
//  CafeApp
//
//  Created by Thierno Diallo on 8/1/23.
//

import UIKit

class MainViewController: UIViewController {
    
    let cafeLabel: UILabel = {
        let label = UILabel()
        label.text = "Diallo Cafe"
        label.textColor = .black
        label.font = .systemFont(ofSize: 39, weight: .semibold, width: .expanded)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let logo: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: "logo_coffee")
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.layer.shadowColor = .init(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    
    let stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.alignment = .center
        stack.distribution = .fill
        return stack
    }()
    
    
    let bottomViewContainer: UIView = {
        let bottomContainer = UIView()
        bottomContainer.translatesAutoresizingMaskIntoConstraints = false
        bottomContainer.backgroundColor = UIColor(red: 240/255, green: 210/255, blue: 170/255, alpha: 1)
        bottomContainer.layer.cornerRadius = 30
        return bottomContainer
    }()
    
 
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        let bottomViewController = BottomViewController()
        addChild(bottomViewController)
        bottomViewContainer.addSubview(bottomViewController.view)
        bottomViewController.didMove(toParent: self)
        bottomViewController.view.frame = bottomViewContainer.frame
               
        setUpUI()

    }
    
    func setUpUI() {
        
        setUpHeader()
        setUpBottomContainer()
    }
    
    
    func setUpHeader() {
        stackView.addArrangedSubview(logo)
        stackView.addArrangedSubview(cafeLabel)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15)
        
        ])

        
    }
    
    func setUpBottomContainer() {
        view.addSubview(bottomViewContainer)
        
        NSLayoutConstraint.activate([
            bottomViewContainer.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 30),
            bottomViewContainer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomViewContainer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomViewContainer.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    


}

