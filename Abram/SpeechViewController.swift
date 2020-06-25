//
//  SpeechViewController.swift
//  Abram
//
//  Created by Subomi Popoola on 5/15/20.
//  Copyright © 2020 subomiPopoola. All rights reserved.
//

import UIKit
import AVFoundation

class SpeechViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var sentence = "Look at the humans speaking like earht is inhuman"
        Say(phrase: sentence)
        // Do any additional setup after loading the view.
    }
    
    func Say(phrase: String){
        var speechSynthesizer = AVSpeechSynthesizer()
        var speechUtterance: AVSpeechUtterance = AVSpeechUtterance(string: phrase)
        speechUtterance.rate = 0.5
        speechUtterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        speechSynthesizer.speak(speechUtterance)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
