//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//  Editted by Donghee Leeon 20/10/2020.

import UIKit
import AVFoundation // audio visual foundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer! // : specifies type

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        sender.alpha = 0.5
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                // do stuff 42 seconds later
                sender.alpha = 1
            }
        
        playSound(soundName:sender.currentTitle!)
        // by adding !, we tell them there is no case where the buttons have no title (nil)
        
    }
    
    func playSound(soundName:String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}
