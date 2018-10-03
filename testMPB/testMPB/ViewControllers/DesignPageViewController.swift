//
//  DesignPageViewController.swift
//  testMPB
//
//  Created by Olga M. Kozhevnikova on 24/08/2018.
//  Copyright © 2018 Olga M. Kozhevnikova. All rights reserved.
//

import SpriteKit

class DesignPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // <load SKScene
            if let scene = SKScene(fileNamed: "GameScene") {
                //Set scale mode for the scene
                scene.scaleMode = .aspectFill
                //Show the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            view.showsNodeCount = true
            
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
