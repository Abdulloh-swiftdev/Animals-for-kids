//
//  ViewController.swift
//  Animals For Kids
//
//  Created by Abdulloh Bahromjonov on 10/9/20.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var soundOnOff: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        soundOnOff.setBackgroundImage(UIImage(named: "soundOn"), for: .normal)
        
    }
    

    @IBAction func startBtnWasPressed(_ sender: Any) {
        performSegue(withIdentifier: "chose", sender: self)
        playSound()
    }
    @IBAction func sound(_ sender: UIButton) {
        if soundActive == false {
            soundOnOff.setBackgroundImage(UIImage(named: "soundOff"), for: .normal)
            soundActive = true
            playMute()
        }
        else {
            soundOnOff.setBackgroundImage(UIImage(named: "soundOn"), for: .normal)
            soundActive = false
        }
        
        
    }
    
}

func playSound()
{
    do
    {
        audioPlayer = try AVAudioPlayer(contentsOf: buttonUrl)
        audioPlayer.play()
    }catch
    {
        
    }
    if soundActive == true{
        audioPlayer.stop()
    }
    if soundActive == false{
        audioPlayer.play()
    }
    
}
func playMute()
{
    do
    {
        audioPlayer = try AVAudioPlayer(contentsOf: muteUrl)
        audioPlayer.play()
    }catch
    {
        
    }
}
