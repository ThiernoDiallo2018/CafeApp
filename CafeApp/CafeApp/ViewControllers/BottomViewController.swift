//
//  BottomViewController.swift
//  CafeApp
//
//  Created by Thierno Diallo on 8/28/23.
//

import UIKit


class BottomViewController: UIViewController {
    
// MARK: - Properties
    
var coffeeModel: CoffeeModel
    
   lazy var tableView: UITableView = {
        let view = UITableView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 30
        view.register(CoffeeTableViewCell.self, forCellReuseIdentifier: CoffeeTableViewCell.id)
        view.backgroundColor = UIColor(red: 210/255.0, green: 180/255.0, blue: 140/255.0, alpha: 0.5)
        view.layer.cornerRadius = 15
        return view
    }()
    
    
// MARK: - Lifecycle
    
    override func didMove(toParent parent: UIViewController?) {}
    
    init(coffeeModel: CoffeeModel = CoffeeModel()) {
        self.coffeeModel = coffeeModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
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
}

// MARK: - Extensions + Function

extension BottomViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return coffeeModel.drinks.count
        case 1:
            return coffeeModel.food.count
        case 2:
            return coffeeModel.merch.count
        default:
            return 1
        }
        
        /*
         If all of the data was in one single array similar to how I had it before (check the model page) then at that point you could just do product.count and it will print Everything. Being that i broke it up into sections, this would be the ideal route. 
         
         */
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CoffeeTableViewCell.id, for: indexPath) as? CoffeeTableViewCell else {
            
            return UITableViewCell()
        }
        
        var product: ProductDetail? // It is an optional so you have to unwrap it below to unleash the data
        
        switch indexPath.section {
        case 0:
            product = coffeeModel.drinks[indexPath.row]
        case 1:
            product = coffeeModel.food[indexPath.row]
        case 2:
            product = coffeeModel.merch[indexPath.row]
        default:
            return UITableViewCell()
        }
        
        if let product = product {
            cell.configureCell(itemTitle: product.name, itemPrice: product.price, itemImage: product.picture, itemDescription: product.description)
        }
        
        
        /*
         * This route is the easiest way to declare data within the tableView. You access the model's index path row through initializing it and configuring it through the function to bring the data over

        let product = coffeeModel.products[indexPath.row]
        cell.configureCell(itemTitle: product.name, itemPrice: product.price, itemImage: product.picture, itemDescription: product.description)
         
        * This route is easy if you want to test dummy data using the UiTableView() default configuration.
         
        var contentsOfCell = cell.defaultContentConfiguration()// Needed to configure and style the cell
        contentsOfCell.text = coffeeModel.products[indexPath.row].name
        contentsOfCell.secondaryText = coffeeModel.products[indexPath.row].description
        contentsOfCell.image = coffeeModel.products[indexPath.row].picture
         
         cell.contentConfiguration = contentsOfCell //cell needs to access the configurations

         */
        
        
        cell.backgroundColor = UIColor(red: 210/255.0, green: 180/255.0, blue: 140/255.0, alpha: 0.5)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            "Food"
        case 1:
            "Drinks"
        case 2:
            "Merch"
        default:
            nil
        }
    }
    
}

extension BottomViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.section {
        case 0:
            let drinks = coffeeModel.drinks[indexPath.row]
            print("You have chosen \(drinks.name) and it is \(drinks.price)")
        case 1:
            let food = coffeeModel.food[indexPath.row]
            print("You have chosen \(food.name) and it is \(food.price)")
        case 2:
            let m = coffeeModel.merch[indexPath.row]
            print("You have chosen \(m.name) and it is \(m.price)")
        default:
            return
        }
    }
}
    

    

