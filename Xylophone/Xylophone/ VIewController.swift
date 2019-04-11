//
//  ViewController.swift
//  Xylophone
//
//  Created by Moses Lara on 10/10/18.
//  Copyright © 2018 Moses Lara. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var selectdSoundFilename : String = ""
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        
        selectdSoundFilename = soundArray[sender.tag - 1]
        print(selectdSoundFilename)

        playSound()

    }
    
    func playSound() {
        let soundURL = Bundle.main.url(forResource: selectdSoundFilename, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
    }
  

}

