//
//  GameScene.swift
//  testMPB
//
//  Created by Olga M. Kozhevnikova on 28/08/2018.
//  Copyright © 2018 Olga M. Kozhevnikova. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var panel: SKNode!
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        
        panel = childNode(withName: "panel")
    }
}
