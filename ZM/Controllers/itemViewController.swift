//
//  itemViewController.swift
//  ZM
//
//  Created by Магомед Абдуразаков on 20/09/2019.
//  Copyright © 2019 Магомед Абдуразаков. All rights reserved.
//

import UIKit

class itemViewController: UIViewController {
    
    var menuItem: MenuItem?
    
    @IBOutlet var image: UIImageView!
    @IBOutlet var priceLabel: UILabel!
    
    @IBOutlet var descriptionLabel: UILabel!
    
    @IBOutlet var addButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addButton.layer.cornerRadius = 4
        updateUI()
    }
    
    @IBAction func addFoodButton(_ sender: Any) {
        UIView.animateKeyframes(withDuration: 1.3, delay: 0, animations: {
            self.addButton.alpha = 0.2
            self.addButton.alpha = 1
        })
        guard let menuItemConst = menuItem  else {return}
        OrderManager.shared.order.MenuItems.append(menuItemConst)
    }
    
    func updateUI() {
        image.image = UIImage(data: menuItem!.image!)
        priceLabel.text = String(menuItem!.price)
        descriptionLabel.text = menuItem!.description
        navigationItem.title = menuItem!.name
    }
    
    
    
    
    
}
