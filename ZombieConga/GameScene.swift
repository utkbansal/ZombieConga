//
//  GameScene.swift
//  ZombieConga
//
//  Created by Utkarsh Bansal on 21/12/16.
//  Copyright © 2016 Software Incubator. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    override func didMove(to view: SKView) {
        let background: SKSpriteNode = SKSpriteNode(imageNamed: "background1")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        self.addChild(background)
        
        
    }
    
}
