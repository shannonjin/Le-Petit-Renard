//
//  GameOverScene.swift
//  Le Petit Renard
//
//  Created by Shannon Jin on 6/10/20.
//  Copyright © 2020 Shannon Jin. All rights reserved.
//

import SpriteKit
import Foundation

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
        moon.run(SKAction.repeatForever(SKAction.rotate(byAngle: .pi / 4, duration: 2.0)))
        moon.zPosition = 1.0
        
        let rose = SKSpriteNode(imageNamed:"rose")
        rose.position = CGPoint (x: size.width/20, y: size.height/10)
        rose.xScale = 3.0
        rose.yScale = 3.0
        rose.zPosition = 2.0
    
        self.addChild(moon)
        self.addChild(rose)
       
        makeLabels()
        
    }
    
    
    func makeLabels(){
        
        let number = Int.random(in: 1 ... 24)
        let txt = NSLocalizedString(String(number), comment: "")
        let quotes = txt.split(separator: "@").map({ (substring) in
            return String(substring)
        })
        
        var xPos = size.width/30  * -1
        var yPos = size.height/2 * 0.7
        
        for quote in quotes{
              let label = SKLabelNode(fontNamed:"Cochin-BoldItalic")
              label.text = quote
              label.fontSize = 45
              label.zPosition = 1.0
              label.position = CGPoint(x: xPos, y: yPos)
              xPos += 10
              yPos -= 55
              addChild(label)
        }
        
        let author = SKLabelNode(fontNamed:"Cochin-BoldItalic")
        author.text = "Antoine de Saint-Exupéry"
        author.fontSize = 35
        author.zPosition = 1.0
        yPos *= -1
        author.position = CGPoint(x: frame.midX, y: yPos)
        addChild(author)
        
        let book = SKLabelNode(fontNamed:"Cochin-BoldItalic")
        book.text = "The Little Prince"
        book.fontSize = 30
        book.zPosition = 1.0
        book.position = CGPoint(x: frame.midX, y: yPos - 40)
        addChild(book)
    }
}
