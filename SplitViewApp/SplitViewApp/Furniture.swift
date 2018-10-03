//
//  Furniture.swift
//  SplitViewApp
//
//  Created by Olga M. Kozhevnikova on 28/08/2018.
//  Copyright © 2018 Olga M. Kozhevnikova. All rights reserved.
//

import UIKit

enum IconName {
    case ichair, icarpet, idoor, iarmchair, ipillow
}

class Furniture {
    
    let name: String
    let imageName: String
    let description: String
    let iconName: IconName
    let brand: String
    
    init(name: String, imageName: String, description: String, iconName: IconName, brand: String ) {
        self.name = name
        self.imageName = imageName
        self.description = description
        self.iconName = iconName
        self.brand = brand
    }
    
    //to orginize objects in similar categoriess in future
    var iconImage: UIImage {
        switch iconName {
        case .ichair:
            return UIImage(named: "ichair.png")!
        case .idoor:
            return UIImage(named: "idoor.png")!
        case .iarmchair:
            return UIImage(named: "iarmchair.png")!
        case .icarpet:
            return UIImage(named: "icarpet.png")!
        case .ipillow:
            return UIImage(named: "ipillow.png")!
        }
        
    }
    
    // returns image of the furniture
    var image: UIImage? {
        return UIImage(named: imageName)
    }
    
}
