//
//  GameViewController.swift
//  Le Petit Renard
//
//  Created by Shannon Jin on 6/10/20.
//  Copyright © 2020 Shannon Jin. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load 'GameScene.sks' as a GKScene. This provides gameplay related content
        // including entities and graphs.
        if let scene = GKScene(fileNamed: "GameScene") {
            
            // Get the SKScene from the loaded GKScene
            if let sceneNode = scene.rootNode as! GameScene? {
                
                // Copy gameplay related content over to the scene
                
                // Set the scale mode to scale to fit the window
                
                sceneNode.scaleMode = .aspectFit
                
                // Present the scene
                if let view = self.view as! SKView? {
                    view.presentScene(sceneNode)
                    
                    view.ignoresSiblingOrder = true
                    
                    view.showsFPS = false
                    view.showsNodeCount = false
                }
            }
        }
    }
}
