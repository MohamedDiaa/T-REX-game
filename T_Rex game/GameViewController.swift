//
//  GameViewController.swift
//  T_Rex game
//
//  Created by Diaa Alwakil on 2017-12-29.
//  Copyright © 2017 Diaa Alwakil. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

enum Shapes{
    
    case cactusLarge  //{ x: 652, y: 2 },
    case cactusSmall  //{ x: 446, y: 2 },
    case cloud  //{ x: 166, y: 2 },
    case horizon  //{ x: 2, y: 104 },
    case moon  //{ x: 954, y: 2 },
    case pterdactyl  //{ x: 260, y: 2 },
    case restart  //{ x: 2, y: 2 },
    case textSprite //{ x: 1294, y: 2 },
    case trex  //{ x: 1678, y: 2 },
    case star  // { x: 1276, y: 2 }
    
    func getOrigin()-> CGPoint{
        switch self {
        case .cactusLarge://{ x: 652, y: 2 },
            return CGPoint(x: 652, y: 2)
        case .cactusSmall: //{ x: 446, y: 2 },
            return CGPoint(x: 446, y: 2)
        case .cloud://{ x: 166, y: 2 },
            return CGPoint(x: 166, y: 2)
        case .horizon:  //{ x: 2, y: 104 },
            return CGPoint(x: 2, y: 104)
        case .moon: //{ x: 954, y: 2 },
            return CGPoint(x: 954, y: 2)
        case .pterdactyl://{ x: 260, y: 2 },
            return CGPoint(x: 260, y: 2)
        case .restart: //{ x: 2, y: 2 },
            return CGPoint(x: 2, y: 2)
        case .textSprite: //{ x: 1294, y: 2 },
            return CGPoint(x: 1294, y: 2)
        case .trex://{ x: 1678, y: 2 },
            return CGPoint(x: 1678, y: 2)
        case .star: // { x: 1276, y: 2 }
            return CGPoint(x: 1276, y: 2)
    }
    }
}
    


class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            let scene = GameScene()
                // Set the scale mode to scale to fit the window
            scene.scaleMode = .resizeFill
            // Present the scene
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
