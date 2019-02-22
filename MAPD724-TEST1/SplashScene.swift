//
//  SplashScene.swift
//  MAPD724-TEST1
//
//  Created by Hemant Phutela on 21/02/2019.
//  Copyright © 2019 Hemant Phutela. All rights reserved.
//

import SpriteKit

class SplashScene: SKScene {
    var starfield:SKEmitterNode!
    var logoButtonNode:SKSpriteNode!
    override func didMove(to view: SKView) {
        starfield = self.childNode(withName: "starfield") as? SKEmitterNode
        starfield.advanceSimulationTime(10)
        
        logoButtonNode = self.childNode(withName: "logoButton") as? SKSpriteNode
        
        //  let userDefaults = UserDefaults.standard
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first
        if let location = touch?.location(in: self){
            let nodesArray = self.nodes(at: location)
            
            if nodesArray.first?.name == "logoButton"{
                let transition = SKTransition.flipHorizontal(withDuration: 0.5)
                let gameScene = GameScene(size: self.size)
                self.view?.presentScene(gameScene, transition: transition)
                
            }

}
}
}
