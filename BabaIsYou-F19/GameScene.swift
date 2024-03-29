//
//  GameScene.swift
//  BabaIsYou-F19
//
//  Created by Parrot on 2019-10-17.
//  Copyright © 2019 Parrot. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    // MARK: Outlets for sprites
    var player:SKSpriteNode!
    var isblock1:SKSpriteNode!
    var stopblock:SKSpriteNode!
    var flagblock:SKSpriteNode!
    var flag:SKSpriteNode!
    var wallblock:SKSpriteNode!
    var winblock:SKSpriteNode!
    var isblock2:SKSpriteNode!
    var wallL:SKSpriteNode!
    var wallR:SKSpriteNode!
    var wallT:SKSpriteNode!
    var wallB:SKSpriteNode!
    let PLAYER_SPEED:CGFloat = 20

    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        
        // initialze the player
        self.player = self.childNode(withName: "player") as! SKSpriteNode
        self.isblock1 = self.childNode(withName: "isblock1") as! SKSpriteNode
        self.stopblock = self.childNode(withName: "stopblock") as! SKSpriteNode
        self.flagblock = self.childNode(withName: "flagblock") as! SKSpriteNode
        self.flag = self.childNode(withName: "flag") as! SKSpriteNode
        self.wallblock = self.childNode(withName: "wallblock") as! SKSpriteNode
        self.winblock = self.childNode(withName: "winblock") as! SKSpriteNode
        self.isblock2 = self.childNode(withName: "isblock2") as! SKSpriteNode
        self.wallL = self.childNode(withName: "wallL") as! SKSpriteNode
        self.wallR = self.childNode(withName: "wallR") as! SKSpriteNode
        self.wallT = self.childNode(withName: "wallT") as! SKSpriteNode
        self.wallB = self.childNode(withName: "wallB") as! SKSpriteNode

        }
   
    func didBegin(_ contact: SKPhysicsContact) {
        print("Something collided!")
        
        let nodeA = contact.bodyA.node
        let nodeB = contact.bodyB.node
        
        if (nodeA == nil || nodeB == nil ) {
            return
        }
        
        if (nodeA!.name == "isblock1" && nodeB!.name == "stopblock") {
            print("Resul: You WIn")
            
           //self.wallT.physicsBody = SKPhysicsBody(edgeFrom: <#T##CGPoint#>, to: <#T##CGPoint#>)
            
                    self.wallT.physicsBody?.categoryBitMask = 4
                    self.wallT.physicsBody?.collisionBitMask = 0
                    self.wallT.physicsBody?.contactTestBitMask = 0
            
            self.wallL.physicsBody?.categoryBitMask = 4
            self.wallL.physicsBody?.collisionBitMask = 0
            self.wallL.physicsBody?.contactTestBitMask = 0
            
            self.wallB.physicsBody?.categoryBitMask = 4
            self.wallB.physicsBody?.collisionBitMask = 0
            self.wallB.physicsBody?.contactTestBitMask = 0
            
            self.wallR.physicsBody?.categoryBitMask = 4
            self.wallR.physicsBody?.collisionBitMask = 0
            self.wallR.physicsBody?.contactTestBitMask = 0
        }
        else{
                    self.wallT.physicsBody?.categoryBitMask = 2
                    self.wallT.physicsBody?.collisionBitMask = 4
                    self.wallT.physicsBody?.contactTestBitMask = 1
            
            self.wallL.physicsBody?.categoryBitMask = 2
            self.wallL.physicsBody?.collisionBitMask = 4
            self.wallL.physicsBody?.contactTestBitMask = 1
            
            self.wallB.physicsBody?.categoryBitMask = 2
            self.wallB.physicsBody?.collisionBitMask = 4
            self.wallB.physicsBody?.contactTestBitMask = 1
            
            self.wallR.physicsBody?.categoryBitMask = 2
            self.wallR.physicsBody?.collisionBitMask = 4
            self.wallR.physicsBody?.contactTestBitMask = 1
        }
        
        if (nodeA!.name == "stopblock" && nodeB!.name == "isblock1") {
            print("Resul: You WIn")
                self.wallT.physicsBody?.categoryBitMask = 4
                            self.wallT.physicsBody?.collisionBitMask = 0
                            self.wallT.physicsBody?.contactTestBitMask = 0
            
            self.wallL.physicsBody?.categoryBitMask = 4
            self.wallL.physicsBody?.collisionBitMask = 0
            self.wallL.physicsBody?.contactTestBitMask = 0
            
            self.wallB.physicsBody?.categoryBitMask = 4
            self.wallB.physicsBody?.collisionBitMask = 0
            self.wallB.physicsBody?.contactTestBitMask = 0
            
            self.wallR.physicsBody?.categoryBitMask = 4
            self.wallR.physicsBody?.collisionBitMask = 0
            self.wallR.physicsBody?.contactTestBitMask = 0
        }
                else{
                            self.wallT.physicsBody?.categoryBitMask = 2
                            self.wallT.physicsBody?.collisionBitMask = 4
                            self.wallT.physicsBody?.contactTestBitMask = 1
            
            self.wallL.physicsBody?.categoryBitMask = 2
            self.wallL.physicsBody?.collisionBitMask = 4
            self.wallL.physicsBody?.contactTestBitMask = 1
            
            self.wallB.physicsBody?.categoryBitMask = 2
            self.wallB.physicsBody?.collisionBitMask = 4
            self.wallB.physicsBody?.contactTestBitMask = 1
            
            self.wallR.physicsBody?.categoryBitMask = 2
            self.wallR.physicsBody?.collisionBitMask = 4
            self.wallR.physicsBody?.contactTestBitMask = 1
        }
        
        if (nodeA!.name == "isblock1" && nodeB!.name == "winblock") {
            print("Resul: You WIn")
            
        }
        
        if (nodeA!.name == "winblock" && nodeB!.name == "isblock1") {
            print("Resul: You WIn")
        }
        
        if (nodeA!.name == "isblock2" && nodeB!.name == "winblock") {
            print("Resul: You WIn")
            
        }
        
        if (nodeA!.name == "winblock" && nodeB!.name == "isblock2") {
            print("Resul: You WIn")
        }
        
        if (nodeA!.name == "flag" && nodeB!.name == "player") {
            print("Resul: You WIn")
            
        }
        
        if (nodeA!.name == "player" && nodeB!.name == "flag") {
            print("Resul: You WIn")
        }
        
        
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // GET THE POSITION WHERE THE MOUSE WAS CLICKED
        // ---------------------------------------------
        let mouseTouch = touches.first
        if (mouseTouch == nil) {
            return
        }
        let location = mouseTouch!.location(in: self)

        // WHAT NODE DID THE PLAYER TOUCH
        // ----------------------------------------------
        let nodeTouched = atPoint(location).name
        //print("Player touched: \(nodeTouched)")
        
        if (nodeTouched == "up") {
            // move up
            self.player.position.y = self.player.position.y + PLAYER_SPEED
        }
        else if (nodeTouched == "down") {
            // move down
             self.player.position.y = self.player.position.y - PLAYER_SPEED
        }
        else if (nodeTouched == "left") {
            // move left
             self.player.position.x = self.player.position.x - PLAYER_SPEED
        }
        else if (nodeTouched == "right") {
            // move right
             self.player.position.x = self.player.position.x + PLAYER_SPEED
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
    }
}
