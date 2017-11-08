//
//  GameScene.swift
//  Juego2
//
//  Created by alicharlie on 19/05/16.
//  Copyright (c) 2016 codepix. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {
        
        self.backgroundColor = UIColor.darkGrayColor()
        let fondo = SKSpriteNode(imageNamed: "fondo2")
        fondo.position = CGPointMake(self.frame.midX, self.frame.midY)
        fondo.zPosition = -1
        self.addChild(fondo)
        let num1 = SKSpriteNode(imageNamed: "1")
        num1.position = CGPointMake(self.frame.midX, self.frame.midY*1.2)
        self.addChild(num1)
        
        let destino = CGPointMake(self.frame.width, self.frame.midY + 25)
        let mover = SKAction.moveTo(destino, duration: 2)
        let accionMover = SKAction.repeatAction(mover, count: 1)
        num1.runAction(accionMover)
        
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
       
        
        for touch in touches {
            let location = touch.locationInNode(self)
            print(location)
        }
    }
   
    
    
    override func update(currentTime: CFTimeInterval) {
        
    }

}
