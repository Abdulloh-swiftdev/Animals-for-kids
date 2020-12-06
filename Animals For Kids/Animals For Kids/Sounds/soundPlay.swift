//
//  soundPlay.swift
//  Animals For Kids
//
//  Created by Abdulloh Bahromjonov on 10/10/20.
//

import Foundation
import AVFoundation

let format = "mp3"
var audioPlayer:AVAudioPlayer!
//pathes
let pathToSound = Bundle.main.path(forResource: "button", ofType: format)!
let pathToMute = Bundle.main.path(forResource: "mute", ofType: format)!
let pathToCorrect = Bundle.main.path(forResource: "correct", ofType: format)!
let pathToWrong = Bundle.main.path(forResource: "wrong", ofType: format)!
//urls
let muteUrl = URL(fileURLWithPath: pathToMute)
let buttonUrl = URL(fileURLWithPath: pathToSound)
let correctUrl = URL(fileURLWithPath: pathToCorrect)
let wrongUrl = URL(fileURLWithPath: pathToWrong)

func playSounds() {
    audioPlayer.play()
}
