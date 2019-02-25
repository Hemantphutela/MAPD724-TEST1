//
//  Credit.swift
//  MAPD724-TEST1
//
//  Created by Hemant Phutela on 24/02/2019.
//  Copyright © 2019 Hemant Phutela. All rights reserved.
//

import Foundation
import SpriteKit
import UIKit


class Credit {
    public static var CreditsLabel:SKLabelNode = SKLabelNode(text: "999")
    public static var BetLabel:SKLabelNode = SKLabelNode(text: "99")
    public static var UserLabel:SKLabelNode = SKLabelNode(text: "")
    public static var WinLabel:SKLabelNode = SKLabelNode(text: "999")
    public static var BetOneLabel:SKLabelNode = SKLabelNode(text: "Bet One")
    public static var BetMaxLabel:SKLabelNode = SKLabelNode(text: "Bet Max")
    public static var QuitLabel:SKLabelNode = SKLabelNode(text: "Quit")
    public static var ResetLabel:SKLabelNode = SKLabelNode(text: "Reset")
    public static var PlusLabel:SKLabelNode = SKLabelNode(text: "+")
    public static var MinusLabel:SKLabelNode = SKLabelNode(text: "-")
    
    
    // public static variables
    public static var Credit:Int = 100 {
        didSet {
            CreditsLabel.text = String(Credit)
        }
    }
    
    public static var Bet:Int = 1 {
        didSet {
            BetLabel.text = String(Bet)
        }
    }
    
    public static var Win:Int = 0 {
        didSet {
            WinLabel.text = String(Win)
        }
    }
    
    public static var User:String = "" {
        didSet {
            UserLabel.text = String(User)
        }
    }
    
}
