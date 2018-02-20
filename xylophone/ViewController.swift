//
//  ViewController.swift
//  xylophone
//
//  Created by Ahmed Abuelmagd on 2/20/18.
//  Copyright © 2018 Ahmed Abuelmagd. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController,AVAudioPlayerDelegate {
    
    var audioPlayer :AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["note1","note2","note3","note4","note5","note6","note7"]
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    @IBAction func notePressed(_ sender: UIButton) {
        selectedSoundFileName = soundArray[sender.tag - 1]
      playSound()
    }
    
    func playSound (){
        
        let soundURl = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: soundURl!)
        }catch{
            print("error")
        }
        audioPlayer.play()
    }
}

