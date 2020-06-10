//
//  GameOverScene.swift
//  Le Petit Renard
//
//  Created by Shannon Jin on 6/10/20.
//  Copyright © 2020 Shannon Jin. All rights reserved.
//

import SpriteKit

class GameOverScene: SKScene {
    
    override func sceneDidLoad() {
          
         print("game over")
          let background = SKSpriteNode(imageNamed:"background2")
          background.position = CGPoint(x:frame.midX , y: frame.midY)
          background.size = self.size
          self.addChild(background)
    }
    
    override func didMove(to view: SKView) {
        
        let moon = SKSpriteNode(imageNamed:"moon")
        moon.position = CGPoint(x:frame.midX , y: frame.midY)
        
        moon.run(SKAction.repeatForever(SKAction.rotate(byAngle: .pi / 4, duration: 1.5)))

        moon.zPosition = 1.0
        self.addChild(moon)
        
    }
}
