//
//  HeaderScreenView.swift
//  CafeApp
//
//  Created by Thierno Diallo on 8/27/23.
//

import UIKit
 class CafeHeaderView: UITableViewHeaderFooterView {
 
     // MARK: - Properties
     static let id: String = "HeaderView"
     
     private var titleSection: UILabel = {
         let label = UILabel()
         label.translatesAutoresizingMaskIntoConstraints = false
         label.textColor = .black
         label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
         label.textAlignment = .left
         return label
     }()
     
     private var sectionLine: UIView = {
         let view = UIView()
         view.translatesAutoresizingMaskIntoConstraints = false
         view.backgroundColor = .black
         return view
     }()
     
     // MARK: - Initializers
     override init(reuseIdentifier: String?) {
         super.init(reuseIdentifier: reuseIdentifier)
         
         setUpUI()
     }
     required init?(coder: NSCoder) {
         fatalError("init(coder:) has not been implemented")
     }
     // MARK: - Functions
   private func setUpUI() {
         contentView.addSubview(titleSection)
         contentView.addSubview(sectionLine)
         
         NSLayoutConstraint.activate([
            
            titleSection.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 24),
            titleSection.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 24),
            titleSection.bottomAnchor.constraint(equalTo: sectionLine.topAnchor, constant: -16),
            
            sectionLine.leadingAnchor.constraint(equalTo: titleSection.leadingAnchor),
            sectionLine.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            sectionLine.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            sectionLine.heightAnchor.constraint(equalToConstant: 1),
         ])
     }
     func configure(headerTitle: String) {
         let attributedString = NSMutableAttributedString(string: headerTitle)
         attributedString.addAttribute(NSAttributedString.Key.kern, value: 14, range: NSRange(location: 0, length: attributedString.length))
         titleSection.attributedText = attributedString
     }
 }
 

