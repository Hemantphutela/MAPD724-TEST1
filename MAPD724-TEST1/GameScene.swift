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
var spinImage1node:SKSpriteNode!
var spinImage2node:SKSpriteNode!
var spinImage3node:SKSpriteNode!
var textures = [SKTexture]()


class GameScene: SKScene {
    override func didMove(to view: SKView) {
        
        background.position = CGPoint(x: frame.size.width / 2, y: frame.size.height / 2)
        background.size = self.frame.size
        addChild(background)
       
        
      spinButtonnode = self.childNode(withName: "spinButton") as? SKSpriteNode
      quitButtonnode = self.childNode(withName: "quitButton") as? SKSpriteNode
        resetButtonnode = self.childNode(withName: "resetButton") as? SKSpriteNode
       spinImage1node = self.childNode(withName: "spinImage1") as? SKSpriteNode
        spinImage2node = self.childNode(withName: "spinImage2") as? SKSpriteNode
        spinImage3node = self.childNode(withName: "spinImage3") as? SKSpriteNode
        
        
       spinButtonnode.texture = SKTexture(imageNamed: "Spin")
        resetButtonnode.texture = SKTexture(imageNamed: "Reset")
        quitButtonnode.texture = SKTexture(imageNamed: "quit")
        
        textures.append(SKTexture(imageNamed: "Cherry"))
        textures.append(SKTexture(imageNamed: "Apple"))
        textures.append(SKTexture(imageNamed: "Grape"))
        textures.append(SKTexture(imageNamed: "Kiwi"))
        textures.append(SKTexture(imageNamed: "Lemon"))
        textures.append(SKTexture(imageNamed: "Banana"))
        
}

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "spinButton"{
                
                // Randomly select a character
                let rand = Int(arc4random_uniform(UInt32(textures.count)))
                let rand2 = Int(arc4random_uniform(UInt32(textures.count)))
               let rand3 = Int(arc4random_uniform(UInt32(textures.count)))
                let texture = textures[rand] as SKTexture
                let texture2 = textures[rand2] as SKTexture
                 let texture3 = textures[rand3] as SKTexture
                spinImage1node.texture = texture
                spinImage2node.texture = texture2
                spinImage3node.texture = texture3
                
               // spinImage1node.texture = SKTexture(imageNamed: "Cherry")
                //spinImage2node.texture = SKTexture(imageNamed: "Apple")
                //spinImage3node.texture = SKTexture(imageNamed: "Grape")
               
                
            } else if nodesArray.first?.name == "quitButton"{
                exit(0)
            }
    
    
}
}
}
