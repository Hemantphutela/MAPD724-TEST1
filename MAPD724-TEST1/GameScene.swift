//
//  GameScene.swift
//  MAPD724-TEST1
//
//  Created by Hemant Phutela on 21/02/2019.
//  Copyright © 2019 Hemant Phutela. All rights reserved.
//

import SpriteKit
import GameplayKit

//var starfield:SKEmitterNode!
var background = SKSpriteNode(imageNamed: "background")
var spinButtonnode:SKSpriteNode!
var resetButtonnode:SKSpriteNode!
var quitButtonnode:SKSpriteNode!

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        
        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        background.size = self.frame.size
        addChild(background)
       
        
      spinButtonnode = self.childNode(withName: "spinButton") as? SKSpriteNode
      quitButtonnode = self.childNode(withName: "quitButton") as? SKSpriteNode
        resetButtonnode = self.childNode(withName: "resetButton") as? SKSpriteNode
       
        
        
       spinButtonnode.texture = SKTexture(imageNamed: "Spin")
        resetButtonnode.texture = SKTexture(imageNamed: "Reset")
        quitButtonnode.texture = SKTexture(imageNamed: "quit")
        
}

}
