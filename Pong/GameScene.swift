//
//  GameScene.swift
//  Pong
//
//  Created by Teagan Shepherd on 12/23/20.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var ball = SKSpriteNode()
    var computer = SKSpriteNode()
    var playerOne = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        ball = self.childNode(withName: "ball") as! SKSpriteNode
        computer = self.childNode(withName: "computer") as! SKSpriteNode
        playerOne = self.childNode(withName: "playerOne") as! SKSpriteNode
        
        ball.physicsBody?.applyImpulse(CGVector(dx: -15, dy: -15))
        
        let border = SKPhysicsBody(edgeLoopFrom: self.frame)
        border.friction = 0
        border.restitution = 0
        self.physicsBody = border
    
    }
    
    
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
}
