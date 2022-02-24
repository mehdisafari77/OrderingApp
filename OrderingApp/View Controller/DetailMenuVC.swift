//
//  DetailMenuVC.swift
//  OrderingApp
//
//  Created by Mehdi MMS on 24/02/2022.
//

import UIKit

protocol PlaceOrderProtocol: AnyObject {
    func addOrder()
}

class DetailMenuVC: UIViewController{
    
    @IBOutlet weak var pizzaImageView: UIImageView!
    @IBOutlet weak var prepTimeLabel: UILabel!
    @IBOutlet weak var calsLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dismissButton: UIButton!
    @IBOutlet weak var priceLabel: UILabel!
    
    var pizza: Pizza?
    
    weak var pizzaDelegate: PlaceOrderProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleButton()
        updateViews()
    }
    
    func styleButton() {
        dismissButton.setImage(UIImage(systemName: "x.circle.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 32, weight: .medium, scale: .default)), for: .normal)
        dismissButton.tintColor = .systemPink
    }
    
    func updateViews() {
        guard let pizza = pizza else {
            return
        }
        nameLabel.text = pizza.name
        prepTimeLabel.text = "⏰ 10 - 15 mins"
        cheeseLabel.text = pizza.cheeseType
        priceLabel.text = "& \(pizza.price)"
        descriptionLabel.text = pizza.description
        calsLabel.text = "🔥\(pizza.cal)"
        pizzaImageView.image = UIImage(named: pizza.imageName)
        ratingLabel.text = "⭐️ \(pizza.rating)"
    }
    
    
    @IBAction func addButtonTapped(_ sender: Any) {
        pizzaDelegate?.addOrder()
    }
    
    @IBAction func dismissButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}

