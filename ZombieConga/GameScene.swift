//
//  GameScene.swift
//  ZombieConga
//
//  Created by Utkarsh Bansal on 21/12/16.
//  Copyright © 2016 Software Incubator. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    let zombie: SKSpriteNode = SKSpriteNode(imageNamed: "zombie1")
    
    var lastUpdateTime: TimeInterval = 0
    var dt: TimeInterval = 0
    let zombieMovePointsPerSec: CGFloat = 480.0
    var velocity = CGPoint.zero
    
    override func didMove(to view: SKView) {
        
        let background: SKSpriteNode = SKSpriteNode(imageNamed: "background1")
        background.position = CGPoint(x: size.width/2, y: size.height/2)
        background.zPosition = -1
        self.addChild(background)
        
        zombie.position = CGPoint(x: 400, y: 400)
        self.addChild(zombie)
        
        
    }
    
    func moveSprite(sprite: SKSpriteNode, velocity: CGPoint) {
        let amountToMove = CGPoint(x: velocity.x * CGFloat(dt), y: velocity.y * CGFloat(dt))
        
        sprite.position = CGPoint(x: sprite.position.x + amountToMove.x, y: sprite.position.y + amountToMove.y)
    }
    
    override func update(_ currentTime: TimeInterval) {
        
        if lastUpdateTime > 0 {
            dt = currentTime - lastUpdateTime
        }
        else {
            dt = 0
        }
        lastUpdateTime = currentTime
//        print("\(dt*1000) milliseconds since last update")
        
        self.moveSprite(sprite: zombie, velocity: CGPoint(x: zombieMovePointsPerSec, y: 0))
    }
    
}
