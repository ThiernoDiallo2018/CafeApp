//
//  HeaderScreenView.swift
//  CafeApp
//
//  Created by Thierno Diallo on 8/27/23.
//

import UIKit

class HeaderScreenView: UIView {
    
  
    
    let cafeLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = .systemFont(ofSize: 26, weight: .bold, width: .expanded)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    let image: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
 
    
    /* TODO: - Going to create the HeaderView of the Main Screen.
    
        Need to create the top of the main page that has the UILabel Hank Cafe and UIImage of the Coffee
        Will be using StackView to make them neat and close together
        Will need to pass the UIView of this class onto the ViewController
        Might have to make this a UIViewController? or keep it as a UIView? So you can pass it in as a child into the MainViewController
    
     
     
     */


}
