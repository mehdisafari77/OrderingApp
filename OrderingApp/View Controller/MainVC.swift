//
//  MainVC.swift
//  OrderingApp
//
//  Created by Mehdi MMS on 24/02/2022.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    @IBOutlet weak var myCollectionView: UICollectionView!


    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Collection View Datasource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }


    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {


    }

    // MARK: - Animation
    func animateAstroDude(myImageView: UIImageView) {
        let originalCenter = myImageView.center
        UIView.animateKeyframes(withDuration: 1.5, delay: 0.0, animations: {

            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25, animations: {
                myImageView.center.x -= 80.0
                myImageView.center.y += 10.0
            })

            UIView.addKeyframe(withRelativeStartTime: 0.1, relativeDuration: 0.4) {
                myImageView.transform = CGAffineTransform(rotationAngle: -.pi / 80)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) {
                myImageView.center.x -= 100.0
                myImageView.center.y += 50.0
                myImageView.alpha = 0.0
            }

            UIView.addKeyframe(withRelativeStartTime: 0.51, relativeDuration: 0.01) {
                myImageView.transform = .identity
                myImageView.center = CGPoint(x:  900.0, y: 100.0)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.55, relativeDuration: 0.45) {
                myImageView.center = originalCenter
                myImageView.alpha = 1.0
            }

        }, completion: { (_) in
        })
    }


    // MARK: - Action
    @IBAction func orderButtonTapped(_ sender: Any) {

    }

}

