//
//  TableViewCoffeeCellTableViewCell.swift
//  CafeApp
//
//  Created by Thierno Diallo on 8/27/23.
//

import UIKit

class CoffeeTableViewCell: UITableViewCell {
    
    // MARK: - Properties
    static let id: String = "CoffeeTableViewCell"
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        return stackView
    }()
    private var cellLogo: UIImageView = {
        let logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.contentMode = .scaleAspectFit
        return logo
    }()
    private var cellTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 18, weight: UIFont.Weight(rawValue: 500))
        label.textColor = .black
        return label
    }()
    private var cellDescription: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .italicSystemFont(ofSize: 12)
        label.textColor = .black
        return label
    }()
    private var cellPrice: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .systemFont(ofSize: 16, weight: UIFont.Weight(rawValue: 400))
        label.textColor = .black
        return label
    }()
    // MARK: - Lifecycle
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setUpUI()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    // MARK: - Functions
    private func setUpUI() {
        
        stackView.addArrangedSubview(cellTitle)
        stackView.addArrangedSubview(cellDescription)
        
        contentView.addSubview(cellLogo)
        contentView.addSubview(stackView)
        contentView.addSubview(cellPrice)
        
        NSLayoutConstraint.activate([
            cellLogo.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            cellLogo.heightAnchor.constraint(equalToConstant: 41),
            cellLogo.widthAnchor.constraint(equalToConstant: 40),
            
            stackView.leadingAnchor.constraint(equalTo: cellLogo.trailingAnchor, constant: 10),
            stackView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            stackView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5),
            
            cellPrice.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15),
            cellPrice.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            cellPrice.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -5)
                           
    ])
}
    func configureCell(itemTitle: String, itemPrice: String, itemImage: UIImage, itemDescription: String) {
        cellTitle.text = itemTitle
        cellLogo.image = itemImage
        cellDescription.text = itemDescription
        cellPrice.text = itemPrice
    }
}
