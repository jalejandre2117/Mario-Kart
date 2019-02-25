//
//  ViewController.swift
//  Mario Kart
//
//  Created by Jorge Alejandre on 2/25/19.
//  Copyright © 2019 Jorge Alejandre. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var warioKart: UIImageView!
    
    @IBOutlet weak var toadKart: UIImageView!
    
    @IBOutlet weak var marioKart: UIImageView!
    
    @IBOutlet weak var bowserKart: UIImageView!
    
    @IBOutlet weak var luigiKart: UIImageView!
    
    
    var startingPointWario = CGPoint()
    var startingPointToad = CGPoint()
    var startingPointMario = CGPoint()
    var startingPointBowser = CGPoint()
    var startingPointLuigi = CGPoint()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        startingPointToad = toadKart.center
        startingPointLuigi = luigiKart.center
        startingPointMario = marioKart.center
        startingPointWario = warioKart.center
        startingPointBowser = bowserKart.center
        
    }

    
    @IBAction func panKarts(_ sender: UIPanGestureRecognizer) {
    
    let location = sender.location(in: view)
    let kartView = sender.view!
    kartView.center = location
    
    }
    
    @IBAction func pinchKarts(_ sender: UIPinchGestureRecognizer) {
    
    let scale = sender.scale
    let kartView = sender.view!
    kartView.transform = CGAffineTransform(scaleX: scale, y: scale)

        
    }
    
    
    @IBAction func rotateKart(_ sender: UIRotationGestureRecognizer) {
    
    let rotation = sender.rotation
    let kartView = sender.view!
    kartView.transform = CGAffineTransform(rotationAngle: rotation)
        
        
    }
    
    @IBAction func tapKarts(_ sender: UITapGestureRecognizer) {
    
    let kartView = sender.view!
        
    UIView.animate(withDuration: 0.8) {
        kartView.center.x += 400
    }
    
    }
    

    @IBAction func didLongPress(_ sender: UILongPressGestureRecognizer) {
        
        UIView.animate(withDuration: 0.8) {
            self.toadKart.center = self.startingPointToad
            self.luigiKart.center = self.startingPointLuigi
            self.marioKart.center = self.startingPointMario
            self.bowserKart.center = self.startingPointBowser
            self.warioKart.center = self.startingPointWario
        }
    
    
    
    }
    
    
    
    
    
    
}

