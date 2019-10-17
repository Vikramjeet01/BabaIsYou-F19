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
    let PLAYER_SPEED:CGFloat = 20

    override func didMove(to view: SKView) {
        self.physicsWorld.contactDelegate = self
        
        // initialze the player
        self.player = self.childNode(withName: "player") as! SKSpriteNode
    }
   
    func didBegin(_ contact: SKPhysicsContact) {
        print("Something collided!")
        
        let nodeA = contact.bodyA.node
        let nodeB = contact.bodyB.node
        
        if (nodeA == nil || nodeB == nil) {
            return
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
        print("Player touched: \(nodeTouched)")
        
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
