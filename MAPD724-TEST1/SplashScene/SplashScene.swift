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
        
        
        //for t in touches { self.touchDown(atPoint: t.location(in: self)) }
        let touch = touches.first
        if let location = touch?.location(in: self){
        let nodesArray = self.nodes(at: location)
        print("touched")
        if let view = self.view {
            if let scene = SKScene(fileNamed: "GameScene") {
                scene.scaleMode = .aspectFit
                view.presentScene(scene)
            }
        }

                
            }

}


}
