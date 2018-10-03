//
//  DetailViewController.swift
//  SplitViewApp
//
//  Created by Olga M. Kozhevnikova on 28/08/2018.
//  Copyright © 2018 Olga M. Kozhevnikova. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var iconImage: UIImageView!
    @IBOutlet weak var itemImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var brandLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var furniture: Furniture? {
        didSet {
            refreshUI()
        }
    }

    func refreshUI(){
        
        loadViewIfNeeded()
        
        nameLabel.text = furniture?.name
        brandLabel.text = furniture?.brand
        descriptionLabel.text = furniture?.description
        
        iconImage.image = furniture?.iconImage
        itemImage.image = furniture?.image
        
    }

}

extension DetailViewController: FurnitureSelectionDelegate{
    func furnitureSelected(_ newFurnitureItem: Furniture) {
        furniture = newFurnitureItem
    }
}
