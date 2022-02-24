//
//  ItemCVCell.swift
//  OrderingApp
//
//  Created by Mehdi MMS on 24/02/2022.
//

import UIKit

class ItemCVCell: UICollectionViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pizzaImage: UIImageView!
    @IBOutlet weak var cheeseLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    var pizzaLandingPad: Pizza? {
        didSet {
            DispatchQueue.main.async {
                self.updateViews()
            }
        }
    }
    
    func updateViews() {
        guard let unwrappedPizzaObject = pizzaLandingPad else {
            return
        }
        
        nameLabel.text = unwrappedPizzaObject.name
        pizzaImage.image = UIImage(named: unwrappedPizzaObject.imageName)
        cheeseLabel.text = unwrappedPizzaObject.cheeseType
        priceLabel.text = "$ \(unwrappedPizzaObject.price)"

    }

}
