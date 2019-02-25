//
//  GameScene.swift
//  MAPD724-TEST1
//
//  Created by Hemant Phutela on 21/02/2019.
//  Copyright © 2019 Hemant Phutela. All rights reserved.
//

import SpriteKit
import GameplayKit
import UIKit
import AVFoundation

//var starfield:SKEmitterNode!
var background = SKSpriteNode(imageNamed: "background")
var spinButtonnode:SKSpriteNode!
var resetButtonnode:SKSpriteNode!
var quitButtonnode:SKSpriteNode!
var spinImage1node:SKSpriteNode!
var spinImage2node:SKSpriteNode!
var spinImage3node:SKSpriteNode!
var textures = [SKTexture]()


let screenSize = UIScreen.main.bounds
var screenWidth: CGFloat?
var screenHeight: CGFloat?

class GameScene: SKScene {
    override func didMove(to view: SKView) {
        
      //  background.position = CGPoint(x: frame.size.width , y: frame.size.height)
        background.size = self.frame.size
        addChild(background)
       
        
        // Label Config and adding to the scene
        Credit.BetLabel.position.x = 0
        Credit.BetLabel.position.y = -330
        
        Credit.BetLabel.fontColor = UIColor.red
        Credit.BetLabel.fontSize = 60.0
        Credit.BetLabel.zPosition = 3
        Credit.BetLabel.fontName = "Arial"
        Credit.Bet = 1
        
        Credit.BetLabel.name = "bet"
        
        addChild(Credit.BetLabel)
        
        Credit.CreditsLabel.position.x = -180
        Credit.CreditsLabel.position.y = -330
        
        Credit.CreditsLabel.fontColor = UIColor.red
        Credit.CreditsLabel.fontSize = 60.0
        Credit.CreditsLabel.zPosition = 3
        Credit.CreditsLabel.fontName = "Arial"
        Credit.Credit = 100
        
        Credit.CreditsLabel.name = "credit"
        
        addChild(Credit.CreditsLabel)
        
        Credit.WinLabel.position.x = 180
        Credit.WinLabel.position.y = -330
        
        Credit.WinLabel.fontColor = UIColor.green
        Credit.WinLabel.fontSize = 60.0
        Credit.WinLabel.zPosition = 3
        Credit.WinLabel.fontName = "Arial"
        Credit.Win = 0
        Credit.WinLabel.name = "win"
        
        
        addChild(Credit.WinLabel)
        
        Credit.UserLabel.position.x = 0
        Credit.UserLabel.position.y = 460
        
        Credit.UserLabel.fontColor = UIColor.green
        Credit.UserLabel.fontSize = 40.0
        Credit.UserLabel.zPosition = 3
        Credit.UserLabel.fontName = "Arial"
        Credit.UserLabel.name = "user"
        
        
        
        addChild(Credit.UserLabel)
        
        
        Credit.PlusLabel.position.x = -40
        Credit.PlusLabel.position.y = -440
        
        Credit.PlusLabel.fontColor = UIColor.black
        Credit.PlusLabel.fontSize = 70.0
        Credit.PlusLabel.zPosition = 3
        Credit.PlusLabel.fontName = "Arial"
        Credit.PlusLabel.name = "PlusLabel"
        
        Credit.PlusLabel.name = "plusButton"
        
        addChild(Credit.PlusLabel)
        
        Credit.MinusLabel.position.x = 40
        Credit.MinusLabel.position.y = -440
        
        Credit.MinusLabel.fontColor = UIColor.black
        Credit.MinusLabel.fontSize = 70.0
        Credit.MinusLabel.zPosition = 3
        Credit.MinusLabel.fontName = "Arial"
        Credit.MinusLabel.name = "MinusLabel"
        Credit.MinusLabel.name = "minusButton"
        
        addChild(Credit.MinusLabel)
        
        
        
        
        
        
        
        
      spinButtonnode = self.childNode(withName: "spinButton") as? SKSpriteNode
      quitButtonnode = self.childNode(withName: "quitButton") as? SKSpriteNode
        resetButtonnode = self.childNode(withName: "resetButton") as? SKSpriteNode
       spinImage1node = self.childNode(withName: "spinImage1") as? SKSpriteNode
        spinImage2node = self.childNode(withName: "spinImage2") as? SKSpriteNode
        spinImage3node = self.childNode(withName: "spinImage3") as? SKSpriteNode
        
        
       spinButtonnode.texture = SKTexture(imageNamed: "Spin")
        resetButtonnode.texture = SKTexture(imageNamed: "Reset")
        quitButtonnode.texture = SKTexture(imageNamed: "Quit")
        
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
                
                if (spinImage1node.texture == spinImage2node.texture && spinImage2node.texture == spinImage3node.texture){
                    
                    Credit.User = "You Won"
                    Credit.Win = 2 * Credit.Bet
                    Credit.Credit =  2 * Credit.Credit
                }
                else
                {
                    Credit.User = "You Lose!"
                    Credit.Win = 0
                    
                }
                
                if(Credit.Bet > 0 && Credit.Credit > 0){
                    Credit.Credit = Credit.Credit - Credit.Bet
                }
                
                
            } else if nodesArray.first?.name == "quitButton"{
                exit(0)
            }  else if nodesArray.first?.name  == "resetButton" {
                // Call the function here.
                Credit.Bet = 1
                Credit.Credit = 100
                Credit.Win = 0
                Credit.User = ""
                
            }else if nodesArray.first?.name  == "plusButton" {
                // Call the function here.
                if(Credit.Bet<Credit.Credit)    {
                    Credit.Bet = Credit.Bet + 1
                }
            }
                
            else if nodesArray.first?.name == "minusButton" {
                // Call the function here.
                if(Credit.Bet>1)    {
                    Credit.Bet = Credit.Bet - 1
                }
            }
    
    
}
}
}
