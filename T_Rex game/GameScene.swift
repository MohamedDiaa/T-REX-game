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
    
    
    override func didMove(to view: SKView) {
        
        backgroundColor = SKColor.white
        
        let monster = SKSpriteNode(imageNamed: "Ready")
        monster.position = CGPoint(x: size.width * 0.1, y: size.height * 0.5)
        self.addChild(monster)

    }
}
