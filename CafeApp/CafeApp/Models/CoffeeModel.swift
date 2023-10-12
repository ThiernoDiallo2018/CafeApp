//
//  CoffeeModel.swift
//  CafeApp
//
//  Created by Thierno Diallo on 9/2/23.
//

import Foundation
import UIKit


protocol ProductDetail {
    var picture: UIImage { get }
    var name: String { get }
    var description: String { get }
    var price: String { get }
}


/*


class CoffeeModel {
let products: [ProductDetail] = [
    Drinks(picture: UIImage(named: "drinks_coffee")!,name: "Drink Coffee",description: "Our daily house drip coffee", price: "$2.00"),
        Drinks(
            picture: UIImage(named: "drinks_coldbrew")!,
            name: "Cold Brew",
            description: "Daily brewed cold brew",
            price: "$3.00"),
        Drinks(
            picture: UIImage(named: "drinks_pourover")!,
            name: "Pourover",
            description: "A handmade cup of coffee using V60",
            price: "$4.50"),
        Drinks(
            picture: UIImage(named: "drinks_latte")!,
            name: "Latte",
            description: "Espresso with mike or milk alternatives",
            price: "$5.00"),
        Drinks(
            picture: UIImage(named: "drinks_icedlatte")!,
            name: "Iced Latte",
            description: "Iced espresso with milk or milk alternatives",
            price: "$5.00"),
        Drinks(
            picture: UIImage(named: "drinks_espresso-1")!,
            name: "Espresso",
            description: "A hand-pulled shot of our house espresso",
            price: "$3.50"),
        Drinks(
            picture: UIImage(named: "drinks_vietcoffee")! ,
            name: "Vietnamese Coffee",
            description: "Intensely caffeinated cup using Cafe Du Monde",
            price: "$4.25"),
        Drinks(
            picture: UIImage(named: "drinks_tea")!,
            name: "Tea",
            description: "Tazo tea, hot or iced", 
            price: "$2.50"),
        Drinks(
            picture: UIImage(named: "drinks_milk")!,
            name: "Milk",
            description: "A cup of a milk of your choice",
            price: "$2.00"),
        
        Food(
            picture: UIImage(named: "foods_croissant-1")!,
            name: "Croissant",
            description: "A crispy, buttery croissant",
            price: "$4.00"),
        Food(
            picture: UIImage(named: "foods_donut-1")!,
            name: "Donut",
            description: "Our popular old fashion donut",
            price: "$3.50"),
        Food(
            picture: UIImage(named: "foods_sandwich")!,
            name: "Sandwich",
            description: "Ham, cheese, lettuce, tomato on Sourdough",
            price: "$5.50"),
        Food(
            picture: UIImage(named: "foods_gelato")!,
            name: "Gelato",
            description: "A scoop of our housemade gelato",
            price: "$3.50"),
        Food(
            picture: UIImage(named: "foods_cupcake")!,
            name: "Cupcake",
            description: "Most cake with a layer of vanilla buttercream",
            price: "$4.00"),
        Food(
            picture: UIImage(named: "foods_chocolate")!,
            name: "Chocolate Bar",
            description: "A Bar of Ritter Sport",
            price: "$3.50"),
        Food(
            picture: UIImage(named: "foods_pie-1")!,
            name: "Pie Slice",
            description: "Homebaked Apple Pie Slice",
            price: "$4.50"),
        Food(
            picture: UIImage(named: "foods_cookie")!,
            name: "Cookie",
            description: "One giant cookie with sea salt",
            price: "$4.00"),
        Merch(
            picture: UIImage(named: "merch_beans")!,
            name: "Coffee Beans",
            description: "In house roasted beans, whole or ground",
            price: "$12.50"),
        Merch(
            picture: UIImage(named: "merch_chemex")!,
            name: "Chemax",
            description: "To make pourovers at home",
            price: "$20.00"),
        Merch(
            picture: UIImage(named: "merch_filters")!,
            name: "Coffee Filters",
            description: "Chemax Filters, pack of 100",
            price: "$6.50"),
        Merch(
            picture: UIImage(named: "merch_grinder")!,
            name: "Hard Grinder",
            description: "Kalita Hand Grinder",
            price: "$15.50"),
        Merch(
            picture: UIImage(named: "other_newspaper")!,
            name: "Newspaper",
            description: "Daily Newspaper",
            price: "$3.50")

    ]
}

*/


class CoffeeModel {
    
    var drinks: [ProductDetail] = [
        Drinks(picture: UIImage(named: "drinks_coffee")!,
               name: "Drink Coffee",
               description: "Our daily house drip coffee",
               price: "$2.00"),
        Drinks(
            picture: UIImage(named: "drinks_coldbrew")!,
            name: "Cold Brew",
            description: "Daily brewed cold brew",
            price: "$3.00"),
        Drinks(
            picture: UIImage(named: "drinks_pourover")!,
            name: "Pourover",
            description: "A handmade cup of coffee using V60",
            price: "$4.50"),
        Drinks(
            picture: UIImage(named: "drinks_latte")!,
            name: "Latte",
            description: "Espresso with mike or milk alternatives",
            price: "$5.00"),
        Drinks(
            picture: UIImage(named: "drinks_icedlatte")!,
            name: "Iced Latte",
            description: "Iced espresso with milk or milk alternatives",
            price: "$5.00"),
        Drinks(
            picture: UIImage(named: "drinks_espresso-1")!,
            name: "Espresso",
            description: "A hand-pulled shot of our house espresso",
            price: "$3.50"),
        Drinks(
            picture: UIImage(named: "drinks_vietcoffee")! ,
            name: "Vietnamese Coffee",
            description: "Intensely caffeinated cup using Cafe Du Monde",
            price: "$4.25"),
        Drinks(
            picture: UIImage(named: "drinks_tea")!,
            name: "Tea",
            description: "Tazo tea, hot or iced",
            price: "$2.50"),
        Drinks(
            picture: UIImage(named: "drinks_milk")!,
            name: "Milk",
            description: "A cup of a milk of your choice",
            price: "$2.00"),
        ]
    
    
    var food: [ProductDetail] = [
        Food(
            picture: UIImage(named: "foods_croissant-1")!,
            name: "Croissant",
            description: "A crispy, buttery croissant",
            price: "$4.00"),
        Food(
            picture: UIImage(named: "foods_donut-1")!,
            name: "Donut",
            description: "Our popular old fashion donut",
            price: "$3.50"),
        Food(
            picture: UIImage(named: "foods_sandwich")!,
            name: "Sandwich",
            description: "Ham, cheese, lettuce, tomato on Sourdough",
            price: "$5.50"),
        Food(
            picture: UIImage(named: "foods_gelato")!,
            name: "Gelato",
            description: "A scoop of our housemade gelato",
            price: "$3.50"),
        Food(
            picture: UIImage(named: "foods_cupcake")!,
            name: "Cupcake",
            description: "Most cake with a layer of vanilla buttercream",
            price: "$4.00"),
        Food(
            picture: UIImage(named: "foods_chocolate")!,
            name: "Chocolate Bar",
            description: "A Bar of Ritter Sport",
            price: "$3.50"),
        Food(
            picture: UIImage(named: "foods_pie-1")!,
            name: "Pie Slice",
            description: "Homebaked Apple Pie Slice",
            price: "$4.50"),
        Food(
            picture: UIImage(named: "foods_cookie")!,
            name: "Cookie",
            description: "One giant cookie with sea salt",
            price: "$4.00"),
        
        ]
    
    var merch: [ProductDetail] = [
        Merch(
            picture: UIImage(named: "merch_beans")!,
            name: "Coffee Beans",
            description: "In house roasted beans, whole or ground",
            price: "$12.50"),
        Merch(
            picture: UIImage(named: "merch_chemex")!,
            name: "Chemax",
            description: "To make pourovers at home",
            price: "$20.00"),
        Merch(
            picture: UIImage(named: "merch_filters")!,
            name: "Coffee Filters",
            description: "Chemax Filters, pack of 100",
            price: "$6.50"),
        Merch(
            picture: UIImage(named: "merch_grinder")!,
            name: "Hard Grinder",
            description: "Kalita Hand Grinder",
            price: "$15.50"),
        Merch(
            picture: UIImage(named: "other_newspaper")!,
            name: "Newspaper",
            description: "Daily Newspaper",
            price: "$3.50"),

    ]
    
    
}



