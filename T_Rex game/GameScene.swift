//
//  GameScene.swift
//  T_Rex game
//
//  Created by Diaa Alwakil on 2017-12-29.
//  Copyright © 2017 Diaa Alwakil. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    
    let ready = SKTexture(image: #imageLiteral(resourceName: "Ready"))
    let set = SKTexture(image: #imageLiteral(resourceName: "Set"))
    let go = SKTexture(image: #imageLiteral(resourceName: "Go"))

    let monster = SKSpriteNode(texture:  SKTexture(image: #imageLiteral(resourceName: "Ready")))
    
    override func didMove(to view: SKView) 
    {
        
        backgroundColor = SKColor.white
        
        monster.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        self.addChild(monster)

       let action = SKAction.repeatForever(SKAction.sequence([
            
       SKAction.wait(forDuration: 0.1),
        SKAction.run {
            self.monster.texture = self.ready
        },
       SKAction.wait(forDuration: 0.1),
        SKAction.run {
            self.monster.texture = self.go
        },
        SKAction.wait(forDuration: 0.1),
        SKAction.run {
            self.monster.texture = self.set
        }
    ]))
  
       self.monster.run(action)
    }
}
